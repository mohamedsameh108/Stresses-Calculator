classdef StressesCalculator_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        StressesCalculatorUIFigure     matlab.ui.Figure
        GridLayout5                    matlab.ui.container.GridLayout
        OutputParamtersPanel           matlab.ui.container.Panel
        GridLayout3                    matlab.ui.container.GridLayout
        PrincipalStressesPanel         matlab.ui.container.Panel
        GridLayout2_3                  matlab.ui.container.GridLayout
        DropDown_11                    matlab.ui.control.DropDown
        DropDown_10                    matlab.ui.control.DropDown
        DropDown_9                     matlab.ui.control.DropDown
        DropDown_8                     matlab.ui.control.DropDown
        PrincipalAngle2EditField       matlab.ui.control.NumericEditField
        PrincipalAngle2EditFieldLabel  matlab.ui.control.Label
        Sigma2EditField                matlab.ui.control.NumericEditField
        Sigma2EditFieldLabel           matlab.ui.control.Label
        PrincipalAngle1EditField       matlab.ui.control.NumericEditField
        PrincipalAngle1EditFieldLabel  matlab.ui.control.Label
        Sigma1EditField                matlab.ui.control.NumericEditField
        Sigma1EditFieldLabel           matlab.ui.control.Label
        RotationStressesPanel          matlab.ui.container.Panel
        GridLayout2_2                  matlab.ui.container.GridLayout
        DropDown_7                     matlab.ui.control.DropDown
        DropDown_6                     matlab.ui.control.DropDown
        DropDown_5                     matlab.ui.control.DropDown
        TauX1Y1EditField               matlab.ui.control.NumericEditField
        TauX1Y1EditFieldLabel          matlab.ui.control.Label
        SigmaY1EditField               matlab.ui.control.NumericEditField
        SigmaY1EditFieldLabel          matlab.ui.control.Label
        SigmaX1EditField               matlab.ui.control.NumericEditField
        SigmaX1EditFieldLabel          matlab.ui.control.Label
        MaximumShearStressPanel        matlab.ui.container.Panel
        GridLayout2_4                  matlab.ui.container.GridLayout
        DropDown_14                    matlab.ui.control.DropDown
        DropDown_15                    matlab.ui.control.DropDown
        DropDown_13                    matlab.ui.control.DropDown
        DropDown_12                    matlab.ui.control.DropDown
        NormalStressEditField          matlab.ui.control.NumericEditField
        NormalStressEditFieldLabel     matlab.ui.control.Label
        Angle2EditField                matlab.ui.control.NumericEditField
        Angle2EditFieldLabel           matlab.ui.control.Label
        Angle1EditField                matlab.ui.control.NumericEditField
        Angle1EditFieldLabel           matlab.ui.control.Label
        TauXYMaxEditField              matlab.ui.control.NumericEditField
        TauXYMaxEditFieldLabel         matlab.ui.control.Label
        InputParamtersPanel            matlab.ui.container.Panel
        GridLayout2                    matlab.ui.container.GridLayout
        DropDown_4                     matlab.ui.control.DropDown
        DropDown_3                     matlab.ui.control.DropDown
        DropDown_2                     matlab.ui.control.DropDown
        DropDown                       matlab.ui.control.DropDown
        RotationAngleEditField         matlab.ui.control.NumericEditField
        RotationAngleEditFieldLabel    matlab.ui.control.Label
        TauXYEditField                 matlab.ui.control.NumericEditField
        TauXYEditFieldLabel            matlab.ui.control.Label
        SigmaYEditField                matlab.ui.control.NumericEditField
        SigmaYEditFieldLabel           matlab.ui.control.Label
        SigmaXEditField                matlab.ui.control.NumericEditField
        SigmaXEditFieldLabel           matlab.ui.control.Label
        UIAxes7                        matlab.ui.control.UIAxes
        UIAxes6                        matlab.ui.control.UIAxes
        UIAxes9                        matlab.ui.control.UIAxes
        UIAxes8                        matlab.ui.control.UIAxes
        UIAxes5                        matlab.ui.control.UIAxes
    end

    
    properties (Access = private)
        sigmaX = 0 
        sigmaY = 0 
        tauXY = 0 
        theta = 0 
        sigmaX1InPa = 0
        sigmaY1InPa = 0
        tauX1Y1InPa = 0
        princpalAngle1InDeg = 0
        princpalAngle2InDeg = 0
        sigma1InPa = 0
        sigma2InPa = 0
        maxShearAngle1InDeg = 0
        maxShearAngle2InDeg = 0
        tauXYMaxInPa = 0
        normalStressInPa = 0
    end
    
    methods (Access = private)
        
        
        function calcOutput(app)
            getInputParamters(app);
            calcRotationStresses(app);
            calcPrincipalStresses(app);
            calcMaxShearStress(app);
            plotMohrCircle(app);
            plotSketches(app);
        end

        function getInputParamters(app)
            app.sigmaX = changeStressUnitToPa(app , app.SigmaXEditField.Value , app.DropDown.Value);
            app.sigmaY = changeStressUnitToPa(app , app.SigmaYEditField.Value , app.DropDown_2.Value);
            app.tauXY = changeStressUnitToPa(app , app.TauXYEditField.Value , app.DropDown_3.Value);
            app.theta = changeAngleUnitToDeg(app , app.RotationAngleEditField.Value , app.DropDown_4.Value);
        end
        
        function changedValue = changeStressUnitToPa(app, valueToChange, dropDownValue)
            if strcmp(dropDownValue , "Pa")
                changedValue = valueToChange;
            elseif strcmp(dropDownValue, "KPa")
                changedValue = valueToChange * 1000;
            elseif strcmp(dropDownValue, "Psi")
                changedValue = valueToChange * 6894.75729317;
            elseif strcmp(dropDownValue, "Ksi")
                changedValue = valueToChange * 6894757.29317;
            elseif strcmp(dropDownValue, "lbf/(ft)^2")
                changedValue = valueToChange * 47.880259; 
            end
        end

        function changedValue = changeStressUnitFromPa(app , valueToChange, dropDownValue)
            if strcmp(dropDownValue , "Pa")
                changedValue = valueToChange;
            elseif strcmp(dropDownValue, "KPa")
                changedValue = valueToChange * 0.001;
            elseif strcmp(dropDownValue, "Psi")
                changedValue = valueToChange * 0.000145037738;
            elseif strcmp(dropDownValue, "Ksi")
                changedValue = valueToChange * 0.00000014503768078;
            elseif strcmp(dropDownValue, "lbf/(ft)^2")
                changedValue = valueToChange * 0.0208854342; 
            end
        end
        
        function changedValue = changeAngleUnitToDeg(app , valueToChange , dropDownValue)
            if strcmp(dropDownValue , "Deg")
                changedValue = valueToChange;
            elseif strcmp(dropDownValue , "Rad")
                changedValue = valueToChange * (180/pi);
            end
        end

        function calcRotationStresses(app)
            app.sigmaX1InPa = ((app.sigmaX + app.sigmaY) / 2) + ((app.sigmaX - app.sigmaY) * cosd(2 * app.theta) / 2) + (app.tauXY * sind(2 * app.theta));
            app.SigmaX1EditField.Value = changeStressUnitFromPa(app , app.sigmaX1InPa , app.DropDown_5.Value);
            
            app.sigmaY1InPa = ((app.sigmaX + app.sigmaY) / 2) - ((app.sigmaX - app.sigmaY) * cosd(2 * app.theta) / 2) - (app.tauXY * sind(2 * app.theta));
            app.SigmaY1EditField.Value = changeStressUnitFromPa(app , app.sigmaY1InPa , app.DropDown_6.Value);
            
            app.tauX1Y1InPa = (-(app.sigmaX - app.sigmaY) * sind(2 * app.theta) / 2) + ((app.tauXY * cosd(2 * app.theta)));
            app.TauX1Y1EditField.Value = changeStressUnitFromPa(app , app.tauX1Y1InPa , app.DropDown_7.Value);
        end

        function calcPrincipalStresses(app)
            princpalAngle = atand((2 * app.tauXY) / (app.sigmaX - app.sigmaY));
            app.princpalAngle1InDeg = princpalAngle / 2;
            app.princpalAngle2InDeg = (princpalAngle / 2) + 90;

            if strcmp(app.DropDown_9.Value , "Deg")
                app.PrincipalAngle1EditField.Value = app.princpalAngle1InDeg;
            else
                app.PrincipalAngle1EditField.Value = app.princpalAngle1InDeg * (pi/180);
            end

            if strcmp(app.DropDown_11.Value , "Deg")
                app.PrincipalAngle2EditField.Value = app.princpalAngle2InDeg;
            else
                app.PrincipalAngle2EditField.Value = app.princpalAngle2InDeg * (pi/180);
            end

            app.sigma1InPa = ((app.sigmaX + app.sigmaY) / 2) + ((app.sigmaX - app.sigmaY) * cosd(2 * app.princpalAngle1InDeg) / 2) + (app.tauXY * sind(2 * app.princpalAngle1InDeg));
            app.Sigma1EditField.Value = changeStressUnitFromPa(app , app.sigma1InPa , app.DropDown_8.Value);
            
            app.sigma2InPa = ((app.sigmaX + app.sigmaY) / 2) + ((app.sigmaX - app.sigmaY) * cosd(2 * app.princpalAngle2InDeg) / 2) + (app.tauXY * sind(2 * app.princpalAngle2InDeg));
            app.Sigma2EditField.Value = changeStressUnitFromPa(app , app.sigma2InPa , app.DropDown_10.Value);
        end

        function calcMaxShearStress(app)
            maxShearAngle = atand(-(app.sigmaX - app.sigmaY) / (2 * app.tauXY));
            app.maxShearAngle1InDeg = maxShearAngle / 2;
            app.maxShearAngle2InDeg = (maxShearAngle / 2) + 90;

            if strcmp(app.DropDown_13.Value , "Deg")
                app.Angle1EditField.Value = app.maxShearAngle1InDeg;
            else
                app.Angle1EditField.Value = app.maxShearAngle1InDeg * (pi/180);
            end

            if strcmp(app.DropDown_15.Value , "Deg")
                app.Angle2EditField.Value = app.maxShearAngle2InDeg;
            else
                app.Angle2EditField.Value = app.maxShearAngle2InDeg * (pi/180);
            end

            app.tauXYMaxInPa = (-(app.sigmaX - app.sigmaY) * sind(2 * app.maxShearAngle1InDeg) / 2) + ((app.tauXY * cosd(2 * app.maxShearAngle1InDeg)));
            app.TauXYMaxEditField.Value = changeStressUnitFromPa(app , app.tauXYMaxInPa , app.DropDown_12.Value);
            
            app.normalStressInPa = (app.sigmaX + app.sigmaY) / 2;
            app.NormalStressEditField.Value = changeStressUnitFromPa(app , app.normalStressInPa , app.DropDown_14.Value);
        end

        function plotMohrCircle(app)
            cPoint = [((app.sigmaX + app.sigmaY) / 2) , 0];
            aPoint = [app.sigmaX , app.tauXY];
            radius = sqrt((aPoint(1) - cPoint(1))^2 + (aPoint(2) - cPoint(2))^2);

            mohrCircleTheta = linspace(0, 360, 360*100);
            x_circle = cPoint(1) + radius * cosd(mohrCircleTheta);
            y_circle = cPoint(2) + radius * sind(mohrCircleTheta);
            plotedCircle = plot(app.UIAxes5, x_circle, y_circle, 'b');
            plotedCircle.Annotation.LegendInformation.IconDisplayStyle = 'off';

            originalSigmaXStress = [app.sigmaY , app.sigmaX];
            originalTauXYStress = [-app.tauXY , app.tauXY];
            line(app.UIAxes5, originalSigmaXStress, originalTauXYStress, 'DisplayName','Original Stresses', 'Color', "k", 'LineStyle', '-', 'LineWidth', 1);
            
            labelText = sprintf('B(θ = 90°)\n(%.1f, %.1f)', app.sigmaY, -app.tauXY);
            text(app.UIAxes5, app.sigmaY, -app.tauXY, labelText, 'Color', "k", 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right', 'FontSize', 10);
            labelText = sprintf('A(θ = 0°)\n(%.1f, %.1f)', app.sigmaX, app.tauXY);
            text(app.UIAxes5, app.sigmaX, app.tauXY, labelText, 'Color', "k", 'VerticalAlignment', 'top', 'HorizontalAlignment', 'left', 'FontSize', 10);

            rotatedSigmaXStress = [app.sigmaY1InPa , app.sigmaX1InPa];
            rotatedTauXYStress = [-app.tauX1Y1InPa , app.tauX1Y1InPa];
            line(app.UIAxes5, rotatedSigmaXStress, rotatedTauXYStress, 'DisplayName','Rotaition Stresses', 'Color', "cyan", 'LineStyle', '-', 'LineWidth', 1);
            
            labelText = sprintf("D'(θ = %.1f°)\n(%.1f, %.1f)", -app.theta, app.sigmaY1InPa, -app.tauX1Y1InPa);
            text(app.UIAxes5, app.sigmaY1InPa, -app.tauX1Y1InPa, labelText, 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right', 'FontSize', 10);
            labelText = sprintf("D(θ = %.1f°)\n(%.1f, %.1f)", app.theta, app.sigmaX1InPa, app.tauX1Y1InPa);
            text(app.UIAxes5, app.sigmaX1InPa, app.tauX1Y1InPa, labelText, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'FontSize', 10);

            princpalSigmaXStress = [app.sigma1InPa , app.sigma2InPa];
            line(app.UIAxes5, princpalSigmaXStress, [0,0], 'DisplayName','Principal Stresses', 'Color', "r", 'LineStyle', '-', 'LineWidth', 1);
            
            labelText = sprintf("P1(θ = %.1f°)\n(%.1f, %.1f)", app.princpalAngle1InDeg, app.sigma1InPa, 0);
            text(app.UIAxes5, app.sigma1InPa, 0, labelText, 'VerticalAlignment', 'middle', 'HorizontalAlignment', 'left', 'FontSize', 10);
            labelText = sprintf("P2(θ = %.1f°)\n(%.1f, %.1f)", app.princpalAngle2InDeg, app.sigma2InPa, 0);
            text(app.UIAxes5, app.sigma2InPa, 0, labelText, 'VerticalAlignment', 'middle', 'HorizontalAlignment', 'right', 'FontSize', 10);

            maxTauXYStress = [-app.tauXYMaxInPa , app.tauXYMaxInPa];
            line(app.UIAxes5, [app.normalStressInPa , app.normalStressInPa], maxTauXYStress, 'DisplayName','Max Shear Stresses', 'Color', "g", 'LineStyle', '-', 'LineWidth', 1);
            
            labelText = sprintf("S1(θ = %.1f°)\n(%.1f, %.1f)", app.maxShearAngle1InDeg, app.normalStressInPa, app.tauXYMaxInPa);
            text(app.UIAxes5, app.normalStressInPa, app.tauXYMaxInPa, labelText, 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center', 'FontSize', 10);
            labelText = sprintf("S2(θ = %.1f°)\n(%.1f, %.1f)", app.maxShearAngle2InDeg, app.normalStressInPa, -app.tauXYMaxInPa);
            text(app.UIAxes5, app.normalStressInPa, -app.tauXYMaxInPa, labelText, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'center', 'FontSize', 10);

            legend(app.UIAxes5 , 'Location','southwest');
            set(app.UIAxes5 , "YDir" , "reverse");
        end
        
        function plotSketches(app)
            vertices = [-0.5, -0.5; 0.5, -0.5; 0.5, 0.5; -0.5, 0.5; -0.5, -0.5;];
            thetaLine = [0, 0; 0.5, 0];

            plot(app.UIAxes8, vertices(:,1), vertices(:,2) , "b");
            line(app.UIAxes8 , thetaLine(:,1), thetaLine(:,2) , "Color", [0.7,0.7,0.7] , "LineStyle", "-.");
            axis(app.UIAxes8, [-1 1 -1 1]);

            rotatedSketch = plot(app.UIAxes6, vertices(:,1), vertices(:,2), "b");
            rotatedLine = line(app.UIAxes6 , thetaLine(:,1), thetaLine(:,2) , "Color", [0.7,0.7,0.7] , "LineStyle", "-.");
            rotate(rotatedSketch,[0,0,1],app.theta);
            rotate(rotatedLine , [0,0,1] , app.theta);
            axis(app.UIAxes6, [-1 1 -1 1]);

            principalSketch = plot(app.UIAxes7, vertices(:,1), vertices(:,2) , "b");
            principalLine = line(app.UIAxes7 , thetaLine(:,1), thetaLine(:,2) , "Color", [0.7,0.7,0.7] , "LineStyle", "-.");
            rotate(principalSketch,[0,0,1],app.princpalAngle1InDeg);
            rotate(principalLine , [0,0,1] , app.princpalAngle1InDeg);
            axis(app.UIAxes7, [-1 1 -1 1]);

            maxShearSketch = plot(app.UIAxes9, vertices(:,1), vertices(:,2) , "b");
            maxShearLine = line(app.UIAxes9 , thetaLine(:,1), thetaLine(:,2) , "Color", [0.7,0.7,0.7] , "LineStyle", "-.");
            rotate(maxShearSketch,[0,0,1],app.maxShearAngle1InDeg);
            rotate(maxShearLine , [0,0,1] , app.maxShearAngle1InDeg);
            axis(app.UIAxes9, [-1 1 -1 1]);
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: SigmaXEditField
        function SigmaXEditFieldValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: SigmaYEditField
        function SigmaYEditFieldValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: TauXYEditField
        function TauXYEditFieldValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: RotationAngleEditField
        function RotationAngleEditFieldValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown
        function DropDownValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_2
        function DropDown_2ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_3
        function DropDown_3ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_4
        function DropDown_4ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_5
        function DropDown_5ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_6
        function DropDown_6ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_7
        function DropDown_7ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_8
        function DropDown_8ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_9
        function DropDown_9ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_10
        function DropDown_10ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_11
        function DropDown_11ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_13
        function DropDown_13ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_15
        function DropDown_15ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_12
        function DropDown_12ValueChanged(app, event)
            calcOutput(app);
        end

        % Value changed function: DropDown_14
        function DropDown_14ValueChanged(app, event)
            calcOutput(app);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create StressesCalculatorUIFigure and hide until all components are created
            app.StressesCalculatorUIFigure = uifigure('Visible', 'off');
            app.StressesCalculatorUIFigure.Position = [100 100 640 762];
            app.StressesCalculatorUIFigure.Name = 'Stresses Calculator';
            app.StressesCalculatorUIFigure.Icon = 'calculator.png';

            % Create GridLayout5
            app.GridLayout5 = uigridlayout(app.StressesCalculatorUIFigure);
            app.GridLayout5.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '0.8x', '0.8x', '0.8x', '0.8x', '0.8x', '0.8x'};

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.GridLayout5);
            title(app.UIAxes5, 'Mohr Circle')
            xlabel(app.UIAxes5, 'Sigma X1 (in Pa)')
            ylabel(app.UIAxes5, 'Tau X1Y1 (in Pa)')
            zlabel(app.UIAxes5, 'Z')
            app.UIAxes5.GridLineStyle = '-.';
            app.UIAxes5.XColor = [0 0 0];
            app.UIAxes5.TitleHorizontalAlignment = 'right';
            app.UIAxes5.TickDir = 'in';
            app.UIAxes5.XGrid = 'on';
            app.UIAxes5.YGrid = 'on';
            app.UIAxes5.Layout.Row = [4 8];
            app.UIAxes5.Layout.Column = 1;

            % Create UIAxes8
            app.UIAxes8 = uiaxes(app.GridLayout5);
            title(app.UIAxes8, 'Original Stresses Sketch')
            xlabel(app.UIAxes8, 'X')
            ylabel(app.UIAxes8, 'Y')
            zlabel(app.UIAxes8, 'Z')
            app.UIAxes8.GridLineStyle = '-.';
            app.UIAxes8.XGrid = 'on';
            app.UIAxes8.YGrid = 'on';
            app.UIAxes8.Layout.Row = [9 11];
            app.UIAxes8.Layout.Column = 1;

            % Create UIAxes9
            app.UIAxes9 = uiaxes(app.GridLayout5);
            title(app.UIAxes9, 'Max Shear Stresses Sketch')
            xlabel(app.UIAxes9, 'X')
            ylabel(app.UIAxes9, 'Y')
            zlabel(app.UIAxes9, 'Z')
            app.UIAxes9.GridLineStyle = '-.';
            app.UIAxes9.XGrid = 'on';
            app.UIAxes9.YGrid = 'on';
            app.UIAxes9.Layout.Row = [12 14];
            app.UIAxes9.Layout.Column = 2;

            % Create UIAxes6
            app.UIAxes6 = uiaxes(app.GridLayout5);
            title(app.UIAxes6, 'Rotation Stresses Sketch')
            xlabel(app.UIAxes6, 'X')
            ylabel(app.UIAxes6, 'Y')
            zlabel(app.UIAxes6, 'Z')
            app.UIAxes6.GridLineStyle = '-.';
            app.UIAxes6.XGrid = 'on';
            app.UIAxes6.YGrid = 'on';
            app.UIAxes6.Layout.Row = [9 11];
            app.UIAxes6.Layout.Column = 2;

            % Create UIAxes7
            app.UIAxes7 = uiaxes(app.GridLayout5);
            title(app.UIAxes7, 'Principal Stresses Sketch')
            xlabel(app.UIAxes7, 'X')
            ylabel(app.UIAxes7, 'Y')
            zlabel(app.UIAxes7, 'Z')
            app.UIAxes7.GridLineStyle = '-.';
            app.UIAxes7.XGrid = 'on';
            app.UIAxes7.YGrid = 'on';
            app.UIAxes7.Layout.Row = [12 14];
            app.UIAxes7.Layout.Column = 1;

            % Create InputParamtersPanel
            app.InputParamtersPanel = uipanel(app.GridLayout5);
            app.InputParamtersPanel.Title = 'Input Paramters';
            app.InputParamtersPanel.Layout.Row = [1 3];
            app.InputParamtersPanel.Layout.Column = 1;

            % Create GridLayout2
            app.GridLayout2 = uigridlayout(app.InputParamtersPanel);
            app.GridLayout2.ColumnWidth = {'1x', '1x', '0.7x'};
            app.GridLayout2.RowHeight = {'1x', '1x', '1x', '1x'};

            % Create SigmaXEditFieldLabel
            app.SigmaXEditFieldLabel = uilabel(app.GridLayout2);
            app.SigmaXEditFieldLabel.Layout.Row = 1;
            app.SigmaXEditFieldLabel.Layout.Column = 1;
            app.SigmaXEditFieldLabel.Text = 'Sigma X';

            % Create SigmaXEditField
            app.SigmaXEditField = uieditfield(app.GridLayout2, 'numeric');
            app.SigmaXEditField.ValueDisplayFormat = '%11.6g';
            app.SigmaXEditField.ValueChangedFcn = createCallbackFcn(app, @SigmaXEditFieldValueChanged, true);
            app.SigmaXEditField.HorizontalAlignment = 'left';
            app.SigmaXEditField.Layout.Row = 1;
            app.SigmaXEditField.Layout.Column = 2;

            % Create SigmaYEditFieldLabel
            app.SigmaYEditFieldLabel = uilabel(app.GridLayout2);
            app.SigmaYEditFieldLabel.Layout.Row = 2;
            app.SigmaYEditFieldLabel.Layout.Column = 1;
            app.SigmaYEditFieldLabel.Text = 'Sigma Y';

            % Create SigmaYEditField
            app.SigmaYEditField = uieditfield(app.GridLayout2, 'numeric');
            app.SigmaYEditField.ValueDisplayFormat = '%11.6g';
            app.SigmaYEditField.ValueChangedFcn = createCallbackFcn(app, @SigmaYEditFieldValueChanged, true);
            app.SigmaYEditField.HorizontalAlignment = 'left';
            app.SigmaYEditField.Layout.Row = 2;
            app.SigmaYEditField.Layout.Column = 2;

            % Create TauXYEditFieldLabel
            app.TauXYEditFieldLabel = uilabel(app.GridLayout2);
            app.TauXYEditFieldLabel.Layout.Row = 3;
            app.TauXYEditFieldLabel.Layout.Column = 1;
            app.TauXYEditFieldLabel.Text = 'Tau XY';

            % Create TauXYEditField
            app.TauXYEditField = uieditfield(app.GridLayout2, 'numeric');
            app.TauXYEditField.ValueDisplayFormat = '%11.6g';
            app.TauXYEditField.ValueChangedFcn = createCallbackFcn(app, @TauXYEditFieldValueChanged, true);
            app.TauXYEditField.HorizontalAlignment = 'left';
            app.TauXYEditField.Layout.Row = 3;
            app.TauXYEditField.Layout.Column = 2;

            % Create RotationAngleEditFieldLabel
            app.RotationAngleEditFieldLabel = uilabel(app.GridLayout2);
            app.RotationAngleEditFieldLabel.Layout.Row = 4;
            app.RotationAngleEditFieldLabel.Layout.Column = 1;
            app.RotationAngleEditFieldLabel.Text = 'Rotation Angle';

            % Create RotationAngleEditField
            app.RotationAngleEditField = uieditfield(app.GridLayout2, 'numeric');
            app.RotationAngleEditField.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField.ValueChangedFcn = createCallbackFcn(app, @RotationAngleEditFieldValueChanged, true);
            app.RotationAngleEditField.HorizontalAlignment = 'left';
            app.RotationAngleEditField.Layout.Row = 4;
            app.RotationAngleEditField.Layout.Column = 2;

            % Create DropDown
            app.DropDown = uidropdown(app.GridLayout2);
            app.DropDown.Items = {'Pa', 'KPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown.ValueChangedFcn = createCallbackFcn(app, @DropDownValueChanged, true);
            app.DropDown.FontSize = 10;
            app.DropDown.Layout.Row = 1;
            app.DropDown.Layout.Column = 3;
            app.DropDown.Value = 'Pa';

            % Create DropDown_2
            app.DropDown_2 = uidropdown(app.GridLayout2);
            app.DropDown_2.Items = {'Pa', 'KPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_2.ValueChangedFcn = createCallbackFcn(app, @DropDown_2ValueChanged, true);
            app.DropDown_2.FontSize = 10;
            app.DropDown_2.Layout.Row = 2;
            app.DropDown_2.Layout.Column = 3;
            app.DropDown_2.Value = 'Pa';

            % Create DropDown_3
            app.DropDown_3 = uidropdown(app.GridLayout2);
            app.DropDown_3.Items = {'Pa', 'KPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_3.ValueChangedFcn = createCallbackFcn(app, @DropDown_3ValueChanged, true);
            app.DropDown_3.FontSize = 10;
            app.DropDown_3.Layout.Row = 3;
            app.DropDown_3.Layout.Column = 3;
            app.DropDown_3.Value = 'Pa';

            % Create DropDown_4
            app.DropDown_4 = uidropdown(app.GridLayout2);
            app.DropDown_4.Items = {'Deg', 'Rad'};
            app.DropDown_4.ValueChangedFcn = createCallbackFcn(app, @DropDown_4ValueChanged, true);
            app.DropDown_4.FontSize = 10;
            app.DropDown_4.Layout.Row = 4;
            app.DropDown_4.Layout.Column = 3;
            app.DropDown_4.Value = 'Deg';

            % Create OutputParamtersPanel
            app.OutputParamtersPanel = uipanel(app.GridLayout5);
            app.OutputParamtersPanel.Title = 'Output Paramters';
            app.OutputParamtersPanel.Layout.Row = [1 8];
            app.OutputParamtersPanel.Layout.Column = 2;

            % Create GridLayout3
            app.GridLayout3 = uigridlayout(app.OutputParamtersPanel);
            app.GridLayout3.RowHeight = {'0.9x', '0.9x', '1.1x', '1.1x', '1.1x', '1.1x'};

            % Create MaximumShearStressPanel
            app.MaximumShearStressPanel = uipanel(app.GridLayout3);
            app.MaximumShearStressPanel.Title = 'Maximum Shear Stress';
            app.MaximumShearStressPanel.Layout.Row = [5 6];
            app.MaximumShearStressPanel.Layout.Column = [1 2];

            % Create GridLayout2_4
            app.GridLayout2_4 = uigridlayout(app.MaximumShearStressPanel);
            app.GridLayout2_4.ColumnWidth = {'1.1x', '1x', '0.7x'};
            app.GridLayout2_4.RowHeight = {'1x', '1x', '1x', '1x'};

            % Create TauXYMaxEditFieldLabel
            app.TauXYMaxEditFieldLabel = uilabel(app.GridLayout2_4);
            app.TauXYMaxEditFieldLabel.Layout.Row = 1;
            app.TauXYMaxEditFieldLabel.Layout.Column = 1;
            app.TauXYMaxEditFieldLabel.Text = 'Tau XY Max';

            % Create TauXYMaxEditField
            app.TauXYMaxEditField = uieditfield(app.GridLayout2_4, 'numeric');
            app.TauXYMaxEditField.ValueDisplayFormat = '%11.6g';
            app.TauXYMaxEditField.Editable = 'off';
            app.TauXYMaxEditField.HorizontalAlignment = 'left';
            app.TauXYMaxEditField.Layout.Row = 1;
            app.TauXYMaxEditField.Layout.Column = 2;

            % Create Angle1EditFieldLabel
            app.Angle1EditFieldLabel = uilabel(app.GridLayout2_4);
            app.Angle1EditFieldLabel.Layout.Row = 2;
            app.Angle1EditFieldLabel.Layout.Column = 1;
            app.Angle1EditFieldLabel.Text = 'Angle 1';

            % Create Angle1EditField
            app.Angle1EditField = uieditfield(app.GridLayout2_4, 'numeric');
            app.Angle1EditField.ValueDisplayFormat = '%11.6g';
            app.Angle1EditField.Editable = 'off';
            app.Angle1EditField.HorizontalAlignment = 'left';
            app.Angle1EditField.Layout.Row = 2;
            app.Angle1EditField.Layout.Column = 2;

            % Create Angle2EditFieldLabel
            app.Angle2EditFieldLabel = uilabel(app.GridLayout2_4);
            app.Angle2EditFieldLabel.Layout.Row = 3;
            app.Angle2EditFieldLabel.Layout.Column = 1;
            app.Angle2EditFieldLabel.Text = 'Angle 2';

            % Create Angle2EditField
            app.Angle2EditField = uieditfield(app.GridLayout2_4, 'numeric');
            app.Angle2EditField.ValueDisplayFormat = '%11.6g';
            app.Angle2EditField.Editable = 'off';
            app.Angle2EditField.HorizontalAlignment = 'left';
            app.Angle2EditField.Layout.Row = 3;
            app.Angle2EditField.Layout.Column = 2;

            % Create NormalStressEditFieldLabel
            app.NormalStressEditFieldLabel = uilabel(app.GridLayout2_4);
            app.NormalStressEditFieldLabel.Layout.Row = 4;
            app.NormalStressEditFieldLabel.Layout.Column = 1;
            app.NormalStressEditFieldLabel.Text = 'Normal Stress';

            % Create NormalStressEditField
            app.NormalStressEditField = uieditfield(app.GridLayout2_4, 'numeric');
            app.NormalStressEditField.ValueDisplayFormat = '%11.6g';
            app.NormalStressEditField.Editable = 'off';
            app.NormalStressEditField.HorizontalAlignment = 'left';
            app.NormalStressEditField.Layout.Row = 4;
            app.NormalStressEditField.Layout.Column = 2;

            % Create DropDown_12
            app.DropDown_12 = uidropdown(app.GridLayout2_4);
            app.DropDown_12.Items = {'Pa', 'KPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_12.ValueChangedFcn = createCallbackFcn(app, @DropDown_12ValueChanged, true);
            app.DropDown_12.FontSize = 10;
            app.DropDown_12.Layout.Row = 1;
            app.DropDown_12.Layout.Column = 3;
            app.DropDown_12.Value = 'Pa';

            % Create DropDown_13
            app.DropDown_13 = uidropdown(app.GridLayout2_4);
            app.DropDown_13.Items = {'Deg', 'Rad'};
            app.DropDown_13.ValueChangedFcn = createCallbackFcn(app, @DropDown_13ValueChanged, true);
            app.DropDown_13.FontSize = 10;
            app.DropDown_13.Layout.Row = 2;
            app.DropDown_13.Layout.Column = 3;
            app.DropDown_13.Value = 'Deg';

            % Create DropDown_15
            app.DropDown_15 = uidropdown(app.GridLayout2_4);
            app.DropDown_15.Items = {'Deg', 'Rad'};
            app.DropDown_15.ValueChangedFcn = createCallbackFcn(app, @DropDown_15ValueChanged, true);
            app.DropDown_15.FontSize = 10;
            app.DropDown_15.Layout.Row = 3;
            app.DropDown_15.Layout.Column = 3;
            app.DropDown_15.Value = 'Deg';

            % Create DropDown_14
            app.DropDown_14 = uidropdown(app.GridLayout2_4);
            app.DropDown_14.Items = {'Pa', 'KPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_14.ValueChangedFcn = createCallbackFcn(app, @DropDown_14ValueChanged, true);
            app.DropDown_14.FontSize = 10;
            app.DropDown_14.Layout.Row = 4;
            app.DropDown_14.Layout.Column = 3;
            app.DropDown_14.Value = 'Pa';

            % Create RotationStressesPanel
            app.RotationStressesPanel = uipanel(app.GridLayout3);
            app.RotationStressesPanel.Title = 'Rotation Stresses';
            app.RotationStressesPanel.Layout.Row = [1 2];
            app.RotationStressesPanel.Layout.Column = [1 2];

            % Create GridLayout2_2
            app.GridLayout2_2 = uigridlayout(app.RotationStressesPanel);
            app.GridLayout2_2.ColumnWidth = {'1x', '1x', '0.7x'};
            app.GridLayout2_2.RowHeight = {'1x', '1x', '1x'};

            % Create SigmaX1EditFieldLabel
            app.SigmaX1EditFieldLabel = uilabel(app.GridLayout2_2);
            app.SigmaX1EditFieldLabel.Layout.Row = 1;
            app.SigmaX1EditFieldLabel.Layout.Column = 1;
            app.SigmaX1EditFieldLabel.Text = 'Sigma X1';

            % Create SigmaX1EditField
            app.SigmaX1EditField = uieditfield(app.GridLayout2_2, 'numeric');
            app.SigmaX1EditField.ValueDisplayFormat = '%11.6g';
            app.SigmaX1EditField.Editable = 'off';
            app.SigmaX1EditField.HorizontalAlignment = 'left';
            app.SigmaX1EditField.Layout.Row = 1;
            app.SigmaX1EditField.Layout.Column = 2;

            % Create SigmaY1EditFieldLabel
            app.SigmaY1EditFieldLabel = uilabel(app.GridLayout2_2);
            app.SigmaY1EditFieldLabel.Layout.Row = 2;
            app.SigmaY1EditFieldLabel.Layout.Column = 1;
            app.SigmaY1EditFieldLabel.Text = 'Sigma Y1';

            % Create SigmaY1EditField
            app.SigmaY1EditField = uieditfield(app.GridLayout2_2, 'numeric');
            app.SigmaY1EditField.ValueDisplayFormat = '%11.6g';
            app.SigmaY1EditField.Editable = 'off';
            app.SigmaY1EditField.HorizontalAlignment = 'left';
            app.SigmaY1EditField.Layout.Row = 2;
            app.SigmaY1EditField.Layout.Column = 2;

            % Create TauX1Y1EditFieldLabel
            app.TauX1Y1EditFieldLabel = uilabel(app.GridLayout2_2);
            app.TauX1Y1EditFieldLabel.Layout.Row = 3;
            app.TauX1Y1EditFieldLabel.Layout.Column = 1;
            app.TauX1Y1EditFieldLabel.Text = 'Tau X1Y1';

            % Create TauX1Y1EditField
            app.TauX1Y1EditField = uieditfield(app.GridLayout2_2, 'numeric');
            app.TauX1Y1EditField.ValueDisplayFormat = '%11.6g';
            app.TauX1Y1EditField.Editable = 'off';
            app.TauX1Y1EditField.HorizontalAlignment = 'left';
            app.TauX1Y1EditField.Layout.Row = 3;
            app.TauX1Y1EditField.Layout.Column = 2;

            % Create DropDown_5
            app.DropDown_5 = uidropdown(app.GridLayout2_2);
            app.DropDown_5.Items = {'Pa', 'KPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_5.ValueChangedFcn = createCallbackFcn(app, @DropDown_5ValueChanged, true);
            app.DropDown_5.FontSize = 10;
            app.DropDown_5.Layout.Row = 1;
            app.DropDown_5.Layout.Column = 3;
            app.DropDown_5.Value = 'Pa';

            % Create DropDown_6
            app.DropDown_6 = uidropdown(app.GridLayout2_2);
            app.DropDown_6.Items = {'Pa', 'KPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_6.ValueChangedFcn = createCallbackFcn(app, @DropDown_6ValueChanged, true);
            app.DropDown_6.FontSize = 10;
            app.DropDown_6.Layout.Row = 2;
            app.DropDown_6.Layout.Column = 3;
            app.DropDown_6.Value = 'Pa';

            % Create DropDown_7
            app.DropDown_7 = uidropdown(app.GridLayout2_2);
            app.DropDown_7.Items = {'Pa', 'KPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_7.ValueChangedFcn = createCallbackFcn(app, @DropDown_7ValueChanged, true);
            app.DropDown_7.FontSize = 10;
            app.DropDown_7.Layout.Row = 3;
            app.DropDown_7.Layout.Column = 3;
            app.DropDown_7.Value = 'Pa';

            % Create PrincipalStressesPanel
            app.PrincipalStressesPanel = uipanel(app.GridLayout3);
            app.PrincipalStressesPanel.Title = 'Principal Stresses';
            app.PrincipalStressesPanel.Layout.Row = [3 4];
            app.PrincipalStressesPanel.Layout.Column = [1 2];

            % Create GridLayout2_3
            app.GridLayout2_3 = uigridlayout(app.PrincipalStressesPanel);
            app.GridLayout2_3.ColumnWidth = {'1.1x', '1x', '0.7x'};
            app.GridLayout2_3.RowHeight = {'1x', '1x', '1x', '1x'};

            % Create Sigma1EditFieldLabel
            app.Sigma1EditFieldLabel = uilabel(app.GridLayout2_3);
            app.Sigma1EditFieldLabel.Layout.Row = 1;
            app.Sigma1EditFieldLabel.Layout.Column = 1;
            app.Sigma1EditFieldLabel.Text = 'Sigma 1';

            % Create Sigma1EditField
            app.Sigma1EditField = uieditfield(app.GridLayout2_3, 'numeric');
            app.Sigma1EditField.ValueDisplayFormat = '%11.6g';
            app.Sigma1EditField.Editable = 'off';
            app.Sigma1EditField.HorizontalAlignment = 'left';
            app.Sigma1EditField.Layout.Row = 1;
            app.Sigma1EditField.Layout.Column = 2;

            % Create PrincipalAngle1EditFieldLabel
            app.PrincipalAngle1EditFieldLabel = uilabel(app.GridLayout2_3);
            app.PrincipalAngle1EditFieldLabel.Layout.Row = 2;
            app.PrincipalAngle1EditFieldLabel.Layout.Column = 1;
            app.PrincipalAngle1EditFieldLabel.Text = 'Principal Angle 1';

            % Create PrincipalAngle1EditField
            app.PrincipalAngle1EditField = uieditfield(app.GridLayout2_3, 'numeric');
            app.PrincipalAngle1EditField.ValueDisplayFormat = '%11.6g';
            app.PrincipalAngle1EditField.Editable = 'off';
            app.PrincipalAngle1EditField.HorizontalAlignment = 'left';
            app.PrincipalAngle1EditField.Layout.Row = 2;
            app.PrincipalAngle1EditField.Layout.Column = 2;

            % Create Sigma2EditFieldLabel
            app.Sigma2EditFieldLabel = uilabel(app.GridLayout2_3);
            app.Sigma2EditFieldLabel.Layout.Row = 3;
            app.Sigma2EditFieldLabel.Layout.Column = 1;
            app.Sigma2EditFieldLabel.Text = 'Sigma 2';

            % Create Sigma2EditField
            app.Sigma2EditField = uieditfield(app.GridLayout2_3, 'numeric');
            app.Sigma2EditField.ValueDisplayFormat = '%11.6g';
            app.Sigma2EditField.Editable = 'off';
            app.Sigma2EditField.HorizontalAlignment = 'left';
            app.Sigma2EditField.Layout.Row = 3;
            app.Sigma2EditField.Layout.Column = 2;

            % Create PrincipalAngle2EditFieldLabel
            app.PrincipalAngle2EditFieldLabel = uilabel(app.GridLayout2_3);
            app.PrincipalAngle2EditFieldLabel.Layout.Row = 4;
            app.PrincipalAngle2EditFieldLabel.Layout.Column = 1;
            app.PrincipalAngle2EditFieldLabel.Text = 'Principal Angle 2';

            % Create PrincipalAngle2EditField
            app.PrincipalAngle2EditField = uieditfield(app.GridLayout2_3, 'numeric');
            app.PrincipalAngle2EditField.ValueDisplayFormat = '%11.6g';
            app.PrincipalAngle2EditField.Editable = 'off';
            app.PrincipalAngle2EditField.HorizontalAlignment = 'left';
            app.PrincipalAngle2EditField.Layout.Row = 4;
            app.PrincipalAngle2EditField.Layout.Column = 2;

            % Create DropDown_8
            app.DropDown_8 = uidropdown(app.GridLayout2_3);
            app.DropDown_8.Items = {'Pa', 'KPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_8.ValueChangedFcn = createCallbackFcn(app, @DropDown_8ValueChanged, true);
            app.DropDown_8.FontSize = 10;
            app.DropDown_8.Layout.Row = 1;
            app.DropDown_8.Layout.Column = 3;
            app.DropDown_8.Value = 'Pa';

            % Create DropDown_9
            app.DropDown_9 = uidropdown(app.GridLayout2_3);
            app.DropDown_9.Items = {'Deg', 'Rad'};
            app.DropDown_9.ValueChangedFcn = createCallbackFcn(app, @DropDown_9ValueChanged, true);
            app.DropDown_9.FontSize = 10;
            app.DropDown_9.Layout.Row = 2;
            app.DropDown_9.Layout.Column = 3;
            app.DropDown_9.Value = 'Deg';

            % Create DropDown_10
            app.DropDown_10 = uidropdown(app.GridLayout2_3);
            app.DropDown_10.Items = {'Pa', 'KPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_10.ValueChangedFcn = createCallbackFcn(app, @DropDown_10ValueChanged, true);
            app.DropDown_10.FontSize = 10;
            app.DropDown_10.Layout.Row = 3;
            app.DropDown_10.Layout.Column = 3;
            app.DropDown_10.Value = 'Pa';

            % Create DropDown_11
            app.DropDown_11 = uidropdown(app.GridLayout2_3);
            app.DropDown_11.Items = {'Deg', 'Rad'};
            app.DropDown_11.ValueChangedFcn = createCallbackFcn(app, @DropDown_11ValueChanged, true);
            app.DropDown_11.FontSize = 10;
            app.DropDown_11.Layout.Row = 4;
            app.DropDown_11.Layout.Column = 3;
            app.DropDown_11.Value = 'Deg';

            % Show the figure after all components are created
            app.StressesCalculatorUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = StressesCalculator_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.StressesCalculatorUIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.StressesCalculatorUIFigure)
        end
    end
end