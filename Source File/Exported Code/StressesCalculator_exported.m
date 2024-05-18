classdef StressesCalculator_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        StressesCalculatorUIFigure     matlab.ui.Figure
        TabGroup                       matlab.ui.container.TabGroup
        StressesTab                    matlab.ui.container.Tab
        GridLayout6                    matlab.ui.container.GridLayout
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
        AvgNormalStressEditField       matlab.ui.control.NumericEditField
        AvgNormalStressEditFieldLabel  matlab.ui.control.Label
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
        UIAxes9                        matlab.ui.control.UIAxes
        UIAxes6                        matlab.ui.control.UIAxes
        UIAxes7                        matlab.ui.control.UIAxes
        UIAxes8                        matlab.ui.control.UIAxes
        UIAxes5                        matlab.ui.control.UIAxes
        StrainsTab                     matlab.ui.container.Tab
        GridLayout6_2                  matlab.ui.container.GridLayout
        OutputParamtersPanel_2         matlab.ui.container.Panel
        GridLayout3_2                  matlab.ui.container.GridLayout
        PrincipalStrainsPanel          matlab.ui.container.Panel
        GridLayout2_8                  matlab.ui.container.GridLayout
        DropDown_30                    matlab.ui.control.DropDown
        DropDown_29                    matlab.ui.control.DropDown
        DropDown_28                    matlab.ui.control.DropDown
        DropDown_27                    matlab.ui.control.DropDown
        PrincipalAngle2EditField_2     matlab.ui.control.NumericEditField
        PrincipalAngle2EditField_2Label  matlab.ui.control.Label
        Epsilon2EditField              matlab.ui.control.NumericEditField
        Epsilon2EditFieldLabel         matlab.ui.control.Label
        PrincipalAngle1EditField_2     matlab.ui.control.NumericEditField
        PrincipalAngle1EditField_2Label  matlab.ui.control.Label
        Epsilon1EditField              matlab.ui.control.NumericEditField
        Epsilon1EditFieldLabel         matlab.ui.control.Label
        RotationStrainsPanel           matlab.ui.container.Panel
        GridLayout2_7                  matlab.ui.container.GridLayout
        DropDown_26                    matlab.ui.control.DropDown
        DropDown_25                    matlab.ui.control.DropDown
        DropDown_24                    matlab.ui.control.DropDown
        GammaX1Y1EditField             matlab.ui.control.NumericEditField
        GammaX1Y1EditFieldLabel        matlab.ui.control.Label
        EpsilonY1EditField             matlab.ui.control.NumericEditField
        EpsilonY1EditFieldLabel        matlab.ui.control.Label
        EpsilonX1EditField             matlab.ui.control.NumericEditField
        EpsilonX1EditFieldLabel        matlab.ui.control.Label
        MaximumShearStrainPanel        matlab.ui.container.Panel
        GridLayout2_6                  matlab.ui.container.GridLayout
        DropDown_23                    matlab.ui.control.DropDown
        DropDown_22                    matlab.ui.control.DropDown
        DropDown_21                    matlab.ui.control.DropDown
        DropDown_20                    matlab.ui.control.DropDown
        AvgNormalStrainEditField       matlab.ui.control.NumericEditField
        AvgNormalStrainEditFieldLabel  matlab.ui.control.Label
        Angle2EditField_2              matlab.ui.control.NumericEditField
        Angle2EditField_2Label         matlab.ui.control.Label
        Angle1EditField_2              matlab.ui.control.NumericEditField
        Angle1EditField_2Label         matlab.ui.control.Label
        GammaXYMaxEditField            matlab.ui.control.NumericEditField
        GammaXYMaxEditFieldLabel       matlab.ui.control.Label
        InputParamtersPanel_2          matlab.ui.container.Panel
        GridLayout2_5                  matlab.ui.container.GridLayout
        DropDown_19                    matlab.ui.control.DropDown
        DropDown_18                    matlab.ui.control.DropDown
        DropDown_17                    matlab.ui.control.DropDown
        DropDown_16                    matlab.ui.control.DropDown
        RotationAngleEditField_2       matlab.ui.control.NumericEditField
        RotationAngleEditField_2Label  matlab.ui.control.Label
        GammaXYEditField               matlab.ui.control.NumericEditField
        GammaXYEditFieldLabel          matlab.ui.control.Label
        EpsilonYEditField              matlab.ui.control.NumericEditField
        EpsilonYEditFieldLabel         matlab.ui.control.Label
        EpsilonXEditField              matlab.ui.control.NumericEditField
        EpsilonXEditFieldLabel         matlab.ui.control.Label
        UIAxes9_2                      matlab.ui.control.UIAxes
        UIAxes6_2                      matlab.ui.control.UIAxes
        UIAxes7_2                      matlab.ui.control.UIAxes
        UIAxes8_2                      matlab.ui.control.UIAxes
        UIAxes5_2                      matlab.ui.control.UIAxes
        HookesLawTab                   matlab.ui.container.Tab
        GridLayout9                    matlab.ui.container.GridLayout
        YoungsandShearModulusPanel     matlab.ui.container.Panel
        GridLayout2_12                 matlab.ui.container.GridLayout
        PoissonsRatioEditField_3       matlab.ui.control.NumericEditField
        PoissonsRatioEditField_3Label  matlab.ui.control.Label
        DropDown_76                    matlab.ui.control.DropDown
        RotationAngleEditField_15      matlab.ui.control.NumericEditField
        RotationAngleEditField_3Label_13  matlab.ui.control.Label
        DropDown_75                    matlab.ui.control.DropDown
        RotationAngleEditField_14      matlab.ui.control.NumericEditField
        RotationAngleEditField_3Label_12  matlab.ui.control.Label
        EpsilonYEditField_3            matlab.ui.control.NumericEditField
        EpsilonYEditField_3Label       matlab.ui.control.Label
        DropDown_73                    matlab.ui.control.DropDown
        EpsilonXEditField_3            matlab.ui.control.NumericEditField
        EpsilonXEditField_3Label       matlab.ui.control.Label
        DropDown_72                    matlab.ui.control.DropDown
        DropDown_68                    matlab.ui.control.DropDown
        DropDown_67                    matlab.ui.control.DropDown
        UseinStressesandStrainsButton  matlab.ui.control.Button
        SigmaYEditField_3              matlab.ui.control.NumericEditField
        SigmaYEditField_3Label         matlab.ui.control.Label
        SigmaXEditField_3              matlab.ui.control.NumericEditField
        SigmaXEditField_3Label         matlab.ui.control.Label
        ActiveStrainsSwitch            matlab.ui.control.Switch
        DimensionsChangesandStrainEnergyPanel  matlab.ui.container.Panel
        GridLayout2_11                 matlab.ui.container.GridLayout
        CalcDimensionsChangesandStrainEnergyDensityButton  matlab.ui.control.Button
        DropDown_78                    matlab.ui.control.DropDown
        RotationAngleEditField_16      matlab.ui.control.NumericEditField
        RotationAngleEditField_3Label_14  matlab.ui.control.Label
        DropDown_77                    matlab.ui.control.DropDown
        ZEditField_2                   matlab.ui.control.NumericEditField
        ZLabel                         matlab.ui.control.Label
        DropDown_65                    matlab.ui.control.DropDown
        YEditField_2                   matlab.ui.control.NumericEditField
        YLabel                         matlab.ui.control.Label
        DropDown_64                    matlab.ui.control.DropDown
        XEditField_2                   matlab.ui.control.NumericEditField
        XLabel                         matlab.ui.control.Label
        DropDown_63                    matlab.ui.control.DropDown
        RotationAngleEditField_12      matlab.ui.control.NumericEditField
        RotationAngleEditField_3Label_10  matlab.ui.control.Label
        DropDown_52                    matlab.ui.control.DropDown
        DropDown_51                    matlab.ui.control.DropDown
        DropDown_50                    matlab.ui.control.DropDown
        DropDown_49                    matlab.ui.control.DropDown
        DropDown_48                    matlab.ui.control.DropDown
        DropDown_47                    matlab.ui.control.DropDown
        RotationAngleEditField_7       matlab.ui.control.NumericEditField
        RotationAngleEditField_3Label_5  matlab.ui.control.Label
        RotationAngleEditField_6       matlab.ui.control.NumericEditField
        RotationAngleEditField_3Label_4  matlab.ui.control.Label
        VolumeEditField                matlab.ui.control.NumericEditField
        PoissonsRatioLabel             matlab.ui.control.Label
        ZEditField                     matlab.ui.control.NumericEditField
        ZEditFieldLabel                matlab.ui.control.Label
        YEditField                     matlab.ui.control.NumericEditField
        YEditFieldLabel                matlab.ui.control.Label
        XEditField                     matlab.ui.control.NumericEditField
        XEditFieldLabel                matlab.ui.control.Label
        StrainsPanel                   matlab.ui.container.Panel
        GridLayout2_10                 matlab.ui.container.GridLayout
        DropDown_56                    matlab.ui.control.DropDown
        RotationAngleEditField_9       matlab.ui.control.NumericEditField
        RotationAngleEditField_3Label_7  matlab.ui.control.Label
        DropDown_39                    matlab.ui.control.DropDown
        RotationAngleEditField_5       matlab.ui.control.NumericEditField
        RotationAngleEditField_3Label_3  matlab.ui.control.Label
        EpsilonZEditField              matlab.ui.control.NumericEditField
        EpsilonZEditFieldLabel         matlab.ui.control.Label
        DropDown_54                    matlab.ui.control.DropDown
        DropDown_42                    matlab.ui.control.DropDown
        DropDown_41                    matlab.ui.control.DropDown
        DropDown_40                    matlab.ui.control.DropDown
        PlotStrainsMohrsCircleButton   matlab.ui.control.Button
        PoissonsRatioEditField_2       matlab.ui.control.NumericEditField
        PoissonsRatioEditField_2Label  matlab.ui.control.Label
        GammaXYEditField_2             matlab.ui.control.NumericEditField
        GammaXYEditField_2Label        matlab.ui.control.Label
        EpsilonYEditField_2            matlab.ui.control.NumericEditField
        EpsilonYEditField_2Label       matlab.ui.control.Label
        EpsilonXEditField_2            matlab.ui.control.NumericEditField
        EpsilonXEditField_2Label       matlab.ui.control.Label
        StressesPanel                  matlab.ui.container.Panel
        GridLayout2_9                  matlab.ui.container.GridLayout
        DropDown_55                    matlab.ui.control.DropDown
        RotationAngleEditField_8       matlab.ui.control.NumericEditField
        RotationAngleEditField_3Label_6  matlab.ui.control.Label
        SigmaZEditField                matlab.ui.control.NumericEditField
        SigmaZEditFieldLabel           matlab.ui.control.Label
        DropDown_53                    matlab.ui.control.DropDown
        PlotStressesMohrsCircleButton_2  matlab.ui.control.Button
        DropDown_35                    matlab.ui.control.DropDown
        RotationAngleEditField_4       matlab.ui.control.NumericEditField
        RotationAngleEditField_3Label_2  matlab.ui.control.Label
        DropDown_33                    matlab.ui.control.DropDown
        DropDown_32                    matlab.ui.control.DropDown
        DropDown_31                    matlab.ui.control.DropDown
        PoissonsRatioEditField         matlab.ui.control.NumericEditField
        PoissonsratioLabel             matlab.ui.control.Label
        TauXYEditField_2               matlab.ui.control.NumericEditField
        TauXYEditField_2Label          matlab.ui.control.Label
        SigmaYEditField_2              matlab.ui.control.NumericEditField
        SigmaYEditField_2Label         matlab.ui.control.Label
        SigmaXEditField_2              matlab.ui.control.NumericEditField
        SigmaXEditField_2Label         matlab.ui.control.Label
    end

    
    properties (Access = private)
        
    end
    
    methods (Access = private)
        
        
        function calcStressesOutput(app)
            [sigmaX , sigmaY, tauXY , theta] = getInputParamters(app, {app.SigmaXEditField, app.DropDown}, {app.SigmaYEditField, app.DropDown_2}, {app.TauXYEditField, app.DropDown_3}, {app.RotationAngleEditField, app.DropDown_4});
            dispOutputs(app , sigmaX , sigmaY, tauXY, theta, {app.UIAxes5, app.UIAxes8, app.UIAxes6, app.UIAxes7, app.UIAxes9}, {{app.SigmaX1EditField, app.DropDown_5}, {app.SigmaY1EditField, app.DropDown_6}, {app.TauX1Y1EditField, app.DropDown_7}, {app.Sigma1EditField, app.DropDown_8}, {app.Sigma2EditField, app.DropDown_10}, {app.PrincipalAngle1EditField, app.DropDown_9}, {app.PrincipalAngle2EditField, app.DropDown_11}, {app.TauXYMaxEditField, app.DropDown_12}, {app.AvgNormalStressEditField, app.DropDown_14}, {app.Angle1EditField, app.DropDown_13}, {app.Angle2EditField, app.DropDown_15}});
        end

        function calcStrainsOutput(app)
            [sigmaX , sigmaY, tauXY , theta] = getInputParamters(app, {app.EpsilonXEditField, app.DropDown_16}, {app.EpsilonYEditField, app.DropDown_17}, {app.GammaXYEditField, app.DropDown_18}, {app.RotationAngleEditField_2, app.DropDown_19});
            dispOutputs(app , sigmaX , sigmaY, tauXY/2, theta, {app.UIAxes5_2, app.UIAxes8_2, app.UIAxes6_2, app.UIAxes7_2, app.UIAxes9_2}, {{app.EpsilonX1EditField, app.DropDown_24}, {app.EpsilonY1EditField, app.DropDown_25}, {app.GammaX1Y1EditField, app.DropDown_26}, {app.Epsilon1EditField, app.DropDown_27}, {app.Epsilon2EditField, app.DropDown_29}, {app.PrincipalAngle1EditField_2, app.DropDown_28}, {app.PrincipalAngle2EditField_2, app.DropDown_30}, {app.GammaXYMaxEditField, app.DropDown_20}, {app.AvgNormalStrainEditField, app.DropDown_23}, {app.Angle1EditField_2, app.DropDown_21}, {app.Angle2EditField_2, app.DropDown_22}});
        end

        function [sigmaX , sigmaY, tauXY , theta] = getInputParamters(app, input1st, input2nd, input3rd, input4th)
            sigmaX = changeUnit(app , input1st{1}.Value , input1st{2}.Value , '*');
            sigmaY = changeUnit(app , input2nd{1}.Value , input2nd{2}.Value, '*');
            tauXY = changeUnit(app , input3rd{1}.Value , input3rd{2}.Value , '*');
            theta = changeUnit(app , input4th{1}.Value , input4th{2}.Value, '*');
        end
        
        function changedValue = changeUnit(~, valueToChange, dropDownValue , operator)
            if strcmp(dropDownValue , "Deg")
                changedValue = valueToChange;
            elseif strcmp(dropDownValue , "Rad")
                changedValue = eval(['valueToChange' operator '(180/pi)']);

            elseif strcmp(dropDownValue , "Pa")
                changedValue = valueToChange;
            elseif strcmp(dropDownValue, "KPa")
                changedValue = eval(['valueToChange' operator '1000']);
            elseif strcmp(dropDownValue, "MPa")
                changedValue = eval(['valueToChange' operator '1000000']);
            elseif strcmp(dropDownValue, "GPa")
                changedValue = eval(['valueToChange' operator '1000000000']);
            elseif strcmp(dropDownValue, "Psi")
                changedValue = eval(['valueToChange' operator '6894.75729317']);
            elseif strcmp(dropDownValue, "Ksi")
                changedValue = eval(['valueToChange' operator '6894757.29317']);
            elseif strcmp(dropDownValue, "lbf/(ft)^2")
                changedValue = eval(['valueToChange' operator '47.880259']);

            elseif strcmp(dropDownValue , "Micro")
                changedValue = valueToChange;
            elseif strcmp(dropDownValue, "Millie")
                changedValue = eval(['valueToChange' operator '1e3']);
            elseif strcmp(dropDownValue, "Centi")
                changedValue = eval(['valueToChange' operator '1e4']);
            elseif strcmp(dropDownValue, "Unit")
                changedValue = eval(['valueToChange' operator '1e6']);
            elseif strcmp(dropDownValue, "Meter")
                changedValue = eval(['valueToChange' operator '1e6']);
            elseif strcmp(dropDownValue, "Kilo")
                changedValue = eval(['valueToChange' operator '1e9']);
            elseif strcmp(dropDownValue, "Mega")
                changedValue = eval(['valueToChange' operator '1e12']);
            elseif strcmp(dropDownValue, "Giga")
                changedValue = eval(['valueToChange' operator '1e15']);
                
            elseif strcmp(dropDownValue , "Micro³")
                changedValue = valueToChange;
            elseif strcmp(dropDownValue, "Millie³")
                changedValue = eval(['valueToChange' operator '1e9']);
            elseif strcmp(dropDownValue, "Centi³")
                changedValue = eval(['valueToChange' operator '1e12']);
            elseif strcmp(dropDownValue, "Meter³")
                changedValue = eval(['valueToChange' operator '1e18']);
            elseif strcmp(dropDownValue, "Kilo³")
                changedValue = eval(['valueToChange' operator '1e27']);
            elseif strcmp(dropDownValue, "Mega³")
                changedValue = eval(['valueToChange' operator '1e36']);
            elseif strcmp(dropDownValue, "Giga³")
                changedValue = eval(['valueToChange' operator '1e45']);
            end
        end

        function [sigmaX1ToCalc, sigmaY1ToCalc, tauXYToCalc] = calcStresses(~, sigmaX , sigmaY, tauXY, theta)
            sigmaX1ToCalc = ((sigmaX + sigmaY) / 2) + ((sigmaX - sigmaY) * cosd(2 * theta) / 2) + (tauXY * sind(2 * theta));
            sigmaY1ToCalc = ((sigmaX + sigmaY) / 2) - ((sigmaX - sigmaY) * cosd(2 * theta) / 2) - (tauXY * sind(2 * theta));
            tauXYToCalc = (-(sigmaX - sigmaY) * sind(2 * theta) / 2) + ((tauXY * cosd(2 * theta)));
        end

        function [theta1ToCalc, theta2ToCalc] = calcAngles(~, sigmaX , sigmaY, tauXY, S)
            calcedTheta = 0;
            if S == 0
                calcedTheta = atand((2 * tauXY) / (sigmaX - sigmaY));
            elseif S == 1
                calcedTheta = atand(-(sigmaX - sigmaY) / (2 * tauXY));
            end
            if calcedTheta < 0
                calcedTheta = calcedTheta + 180;
            end
            theta1ToCalc = calcedTheta / 2;
            theta2ToCalc = (calcedTheta / 2) + 90;
        end

        function dispCalculated(app, input1st, input2nd, input3rd, input4th)
            if input3rd{1} == app.GammaX1Y1EditField
                input3rd{2} = input3rd{2} * 2;
            elseif input1st{1} == app.GammaXYMaxEditField
                input1st{2} = input1st{2} * 2;
            end
            if nargin == 4
                input1st{1}.Value = changeUnit(app , input1st{2} , input1st{3}.Value, '/');
                input2nd{1}.Value = changeUnit(app , input2nd{2} , input2nd{3}.Value, '/');
                input3rd{1}.Value = changeUnit(app , input3rd{2} , input3rd{3}.Value, '/');
            elseif nargin == 5
                input1st{1}.Value = changeUnit(app , input1st{2} , input1st{3}.Value, '/');
                input2nd{1}.Value = changeUnit(app , input2nd{2} , input2nd{3}.Value, '/');
                input3rd{1}.Value = changeUnit(app, input3rd{2} , input3rd{3}.Value, '/');
                input4th{1}.Value = changeUnit(app, input4th{2} , input4th{3}.Value, '/');
            end
        end

        function [x_rotated, y_rotated] = rotatePoint(~,point, angle, center)
            x = point(:,1);
            y = point(:,2);
            
            x_translated = x - center(1);
            y_translated = y - center(2);
            
            x_rotated = x_translated * cosd(angle) - y_translated * sind(angle);
            y_rotated = x_translated * sind(angle) + y_translated * cosd(angle);
            
            x_rotated = x_rotated + center(1);
            y_rotated = y_rotated + center(2);
        end

        function plotStressSketch(app, axes, theta, sigmaX, sigmaY, tauXY)
            cla(axes);

            linePoints = [0,0; .5,0];
            [x_rotated, y_rotated] = rotatePoint(app, linePoints, theta, [0,0]);
            line(axes, x_rotated, y_rotated, "Color", [0.7,0.7,0.7], "LineStyle", "-.");
            text(axes, x_rotated(1), y_rotated(1), theta + "°", VerticalAlignment="top" , HorizontalAlignment="left", FontSize=7);

            line(axes , [0,1], [0,0] , "Color", [0.7,0.7,0.7] , "LineStyle", "-.");
            line(axes , [0,0], [0,1] , "Color", [0.7,0.7,0.7] , "LineStyle", "-.");

            vertices = [-.5, -.5; .5, -.5; .5, .5; -.5, .5; -.5, -.5];
            [x_rotated, y_rotated] = rotatePoint(app, vertices, theta, [0,0]);
            line(axes, x_rotated, y_rotated, "Color", "b", "LineStyle", "-");

            hold(axes, "on");
            vertices = [-.65, -.65; .65, -.65; .65, .65; -.65, .65];
            [x_rotated, y_rotated] = rotatePoint(app, vertices, theta, [0,0]);
            
            text(axes, x_rotated(1), y_rotated(1), tauXY + " Pa", VerticalAlignment="top" , FontSize=6);
            if tauXY < 0
                quiver(axes, x_rotated(1), y_rotated(1), x_rotated(2) - x_rotated(1), y_rotated(2) - y_rotated(1), 'k');
                quiver(axes, x_rotated(3), y_rotated(3), x_rotated(2) - x_rotated(3), y_rotated(2) - y_rotated(3), 'k');
                quiver(axes, x_rotated(3), y_rotated(3), x_rotated(4) - x_rotated(3), y_rotated(4) - y_rotated(3), 'k');
                quiver(axes, x_rotated(1), y_rotated(1), x_rotated(4) - x_rotated(1), y_rotated(4) - y_rotated(1), 'k');
            elseif tauXY > 0
                quiver(axes, x_rotated(2), y_rotated(2), x_rotated(1) - x_rotated(2), y_rotated(1) - y_rotated(2), 'k');
                quiver(axes, x_rotated(2), y_rotated(2), x_rotated(3) - x_rotated(2), y_rotated(3) - y_rotated(2), 'k');
                quiver(axes, x_rotated(4), y_rotated(4), x_rotated(3) - x_rotated(4), y_rotated(3) - y_rotated(4), 'k');
                quiver(axes, x_rotated(4), y_rotated(4), x_rotated(1) - x_rotated(4), y_rotated(1) - y_rotated(4), 'k');
            end

            vertices = [0, -.65; 0, -1.65; .65, 0; 1.65, 0; 0, .65; 0, 1.65; -.65, 0; -1.65, 0];
            [x_rotated, y_rotated] = rotatePoint(app, vertices, theta, [0,0]);
            
            text(axes, x_rotated(4), y_rotated(4), sigmaX + " Pa", VerticalAlignment="top" , FontSize=6);
            if sigmaY > 0
                quiver(axes, x_rotated(1), y_rotated(1), x_rotated(2) - x_rotated(1), y_rotated(2) - y_rotated(1), 'k');
                quiver(axes, x_rotated(5), y_rotated(5), x_rotated(6) - x_rotated(5), y_rotated(6) - y_rotated(5), 'k');
            elseif sigmaY < 0
                quiver(axes, x_rotated(2), y_rotated(2), x_rotated(1) - x_rotated(2), y_rotated(1) - y_rotated(2), 'k');
                quiver(axes, x_rotated(6), y_rotated(6), x_rotated(5) - x_rotated(6), y_rotated(5) - y_rotated(6), 'k');
            end

            text(axes, x_rotated(2), y_rotated(2), sigmaY + " Pa", VerticalAlignment="top" , FontSize=6);
            if sigmaX > 0
                quiver(axes, x_rotated(3), y_rotated(3), x_rotated(4) - x_rotated(3), y_rotated(4) - y_rotated(3), 'k');
                quiver(axes, x_rotated(7), y_rotated(7), x_rotated(8) - x_rotated(7), y_rotated(8) - y_rotated(7), 'k');
            elseif sigmaX < 0
                quiver(axes, x_rotated(4), y_rotated(4), x_rotated(3) - x_rotated(4), y_rotated(3) - y_rotated(4), 'k');
                quiver(axes, x_rotated(8), y_rotated(8), x_rotated(7) - x_rotated(8), y_rotated(7) - y_rotated(8), 'k');
            end

            axis(axes, "equal");
        end

        function plotStrainSketches(app, axes, lineStyle,theta, sigmaX, sigmaY, tauXY)
            if lineStyle == "-"
                cla(axes);
            end

            tauXY = tauXY * 2;
            if sigmaX == sigmaX && sigmaY == tauXY && tauXY == 0
                x = 0;
                y = 0;
                strain = 0;
            else
                maxRange1 = max(abs(sigmaX) , abs(sigmaY));
                maxRange = max(maxRange1, abs(tauXY));
                x = (sigmaX/maxRange) * .5;
                y = (sigmaY/maxRange) * .5;
                strain = (tauXY/maxRange) * .5;
            end
            
            xlinePoints = [0,0; 1.3,0];
            ylinePoints = [0,0; 0,1.3];
            [x_rotated, y_rotated] = rotatePoint(app, xlinePoints, theta, [0,0]);
            line(axes, x_rotated, y_rotated, "Color", [0.7,0.7,0.7], "LineStyle", "-.");

            [x_rotated, y_rotated] = rotatePoint(app, ylinePoints, theta, [0,0]);
            line(axes, x_rotated, y_rotated, "Color", [0.7,0.7,0.7], "LineStyle", "-.");
            
            line(axes , [0,1.3], [0,0] , "Color", [0.7,0.7,0.7] , "LineStyle", "-.");
            line(axes , [0,0], [0,1.3] , "Color", [0.7,0.7,0.7] , "LineStyle", "-.");

            vertices = [0, 0; 1 + x, 0; 1 + x + strain, 1 + y; 0 + strain, 1 + y; 0, 0];
            [x_rotated, y_rotated] = rotatePoint(app, vertices, theta, [0,0]);
            line(axes, x_rotated, y_rotated, "Color", "b", "LineStyle", lineStyle);

            if lineStyle == "-."
                text(axes, x_rotated(2) , y_rotated(2), sigmaX + "µ", VerticalAlignment="bottom" , FontSize=8, Rotation=theta);
                text(axes, x_rotated(4) , y_rotated(4), sigmaY + "µ", VerticalAlignment="bottom" , FontSize=8, Rotation=theta);
                text(axes, x_rotated(1) , y_rotated(1), tauXY + "µ", VerticalAlignment="top" , FontSize=8, Rotation=theta);
            end

            axis(axes, "equal");
        end

        function plotMohrCircleInfo(~, point1, point2, textToDisplay, color, axes)
            line(axes, [point1{1}, point2{1}], [point1{2}, point2{2}], 'DisplayName',textToDisplay, 'Color', color, 'LineStyle', '-', 'LineWidth', 1);
            labelText = sprintf('%s(θ = %.f°)\n(%.1f, %.1f)', point1{3}, point1{4}, point1{1}, point1{2});
            text(axes, point1{1}, point1{2}, labelText, 'Color', "k", 'VerticalAlignment', point1{5}, 'HorizontalAlignment', point1{6}, 'FontSize', 10);
            labelText = sprintf('%s(θ = %.f°)\n(%.1f, %.1f)', point2{3}, point2{4}, point2{1}, point2{2});
            text(axes, point2{1}, point2{2}, labelText, 'Color', "k", 'VerticalAlignment', point2{5}, 'HorizontalAlignment', point2{6}, 'FontSize', 10);
        end

        function plotMohrCircle(~, sigmaX, sigmaY, tauXY, axes)
            cPoint = [((sigmaX + sigmaY) / 2) , 0];
            aPoint = [sigmaX , tauXY];
            radius = sqrt((aPoint(1) - cPoint(1))^2 + (aPoint(2) - cPoint(2))^2);

            mohrCircleTheta = linspace(0, 360, 360*100);
            x_circle = cPoint(1) + radius * cosd(mohrCircleTheta);
            y_circle = cPoint(2) + radius * sind(mohrCircleTheta);
            plotedCircle = plot(axes, x_circle, y_circle, 'b');
            
            plotedCircle.Annotation.LegendInformation.IconDisplayStyle = 'off';
            axis(axes, "equal");
            legend(axes , 'Location','southwest');
            set(axes , "YDir" , "reverse");
        end
        
        function [x1,x2,y1,y2,txt] = getMohrCirclePosition(app, sigmaX, sigmaY, tauXY)
            if sigmaY < sigmaX
                x1 = 'right';
                x2 = 'left';
            elseif sigmaY > sigmaX
                x1 = 'left';
                x2 = 'right';
            else
                x1 = 'center';
                x2 = 'center';
            end
            
            if tauXY > -tauXY
                y1 = 'bottom';
                y2 = 'top';
            elseif tauXY < -tauXY
                y1 = 'top';
                y2 = 'bottom';
            else
                y1 = 'middle';
                y2 = 'middle';
            end

            if app.TabGroup.SelectedTab == app.StressesTab
                txt = 'Stresses';
            else
                txt = 'Strains';
            end
        end
        
        function dispOutputs(app, sigmaX , sigmaY, tauXY, theta, axes, displays)
            plotMohrCircle(app, sigmaX, sigmaY, tauXY, axes{1});
 
            [x1,x2,y1,y2,txt] = getMohrCirclePosition(app, sigmaX, sigmaY, tauXY);
            plotMohrCircleInfo(app, {sigmaY, -tauXY, "B", 90, y1, x1}, {sigmaX, tauXY, "A", 0, y2, x2}, "Original " + txt, 'k', axes{1});

            [sigmaX1, sigmaY1, tauX1Y1] =  calcStresses(app, sigmaX , sigmaY, tauXY, theta);
            [x1,x2,y1,y2,txt] = getMohrCirclePosition(app, sigmaX1, sigmaY1, tauX1Y1);
            if theta ~= 0, plotMohrCircleInfo(app, {sigmaY1, -tauX1Y1, "D'", theta + 90, y1, x1}, {sigmaX1, tauX1Y1, "D", theta, y2, x2}, "Rotaition " + txt, 'cyan', axes{1}); end
            dispCalculated(app, {displays{1}{1}, sigmaX1, displays{1}{2}}, {displays{2}{1}, sigmaY1, displays{2}{2}}, {displays{3}{1}, tauX1Y1, displays{3}{2}});

            [princpalAngle1 , princpalAngle2] = calcAngles(app, sigmaX, sigmaY, tauXY, 0);
            [sigma1, sigma2] = calcStresses(app, sigmaX , sigmaY, tauXY, princpalAngle1);
            [x1,x2,y1,y2,txt] = getMohrCirclePosition(app, sigma1, sigma2, 0);
            if princpalAngle1 ~= 0, plotMohrCircleInfo(app, {sigma2, 0, "P2", princpalAngle2, y1, x1}, {sigma1, 0, "P1", princpalAngle1, y2, x2}, "Principal " + txt, 'r', axes{1}); end
            dispCalculated(app, {displays{4}{1}, sigma1, displays{4}{2}}, {displays{5}{1}, sigma2, displays{5}{2}}, {displays{6}{1}, princpalAngle1, displays{6}{2}}, {displays{7}{1}, princpalAngle2, displays{7}{2}});
        
            [maxShearAngle1, maxShearAngle2] = calcAngles(app, sigmaX, sigmaY, tauXY, 1);
            [normalStress, ~ , tauXYMax] = calcStresses(app, sigmaX, sigmaY, tauXY, maxShearAngle1);
            [x1,x2,y1,y2,txt] = getMohrCirclePosition(app, normalStress, normalStress, tauXYMax);
            if maxShearAngle1 ~= 0, plotMohrCircleInfo(app, {normalStress, -tauXYMax, "S2", maxShearAngle2, y1, x1}, {normalStress, tauXYMax, "S1", maxShearAngle1, y2, x2}, "Max Shear " + txt, 'g', axes{1}); end
            dispCalculated(app, {displays{8}{1}, abs(tauXYMax), displays{8}{2}}, {displays{9}{1}, normalStress, displays{9}{2}}, {displays{10}{1}, maxShearAngle1, displays{10}{2}}, {displays{11}{1}, maxShearAngle2, displays{11}{2}});

            if app.TabGroup.SelectedTab == app.StressesTab
                plotStressSketch(app, axes{2}, 0, sigmaX, sigmaY, tauXY);
                plotStressSketch(app, axes{3}, theta, sigmaX1, sigmaY1, tauX1Y1);
                plotStressSketch(app, axes{4}, princpalAngle1, sigma1, sigma2, 0);
                plotStressSketch(app, axes{5}, maxShearAngle1, normalStress, normalStress, tauXYMax);
            elseif app.TabGroup.SelectedTab == app.StrainsTab
                plotStrainSketches(app, axes{2}, "-", 0, 0, 0, 0);
                plotStrainSketches(app, axes{2}, "-.", 0, sigmaX, sigmaY, tauXY);

                plotStrainSketches(app, axes{3}, "-", theta, 0, 0, 0);
                plotStrainSketches(app, axes{3}, "-.", theta, sigmaX1, sigmaY1, tauX1Y1);

                plotStrainSketches(app, axes{4}, "-", princpalAngle1, 0, 0, 0);
                plotStrainSketches(app, axes{4}, "-.", princpalAngle1, sigma1, sigma2, 0);

                plotStrainSketches(app, axes{5}, "-", maxShearAngle1, 0, 0, 0);
                plotStrainSketches(app, axes{5}, "-.", maxShearAngle1, normalStress, normalStress, tauXYMax);
            end
        end

        function calcHookStrains(app)
            sigmaX = changeUnit(app , app.SigmaXEditField_2.Value , app.DropDown_31.Value , '*');
            sigmaY = changeUnit(app , app.SigmaYEditField_2.Value , app.DropDown_32.Value, '*');
            sigmaZ = changeUnit(app , app.SigmaZEditField.Value , app.DropDown_53.Value, '*');
            tauXY = changeUnit(app , app.TauXYEditField_2.Value , app.DropDown_33.Value , '*');
            E = changeUnit(app , app.RotationAngleEditField_4.Value , app.DropDown_35.Value , '*');
            pRatio = app.PoissonsRatioEditField.Value;
            
            G = E/(2*(1 + pRatio));
            app.EpsilonXEditField_2.Value = changeUnit(app , ((1/E)*(sigmaX - (pRatio * (sigmaY + sigmaZ)))) * 1e6 , app.DropDown_40.Value, '/');
            app.EpsilonYEditField_2.Value = changeUnit(app , ((1/E)*(sigmaY - (pRatio * (sigmaX + sigmaZ)))) * 1e6 , app.DropDown_41.Value, '/');
            app.EpsilonZEditField.Value = changeUnit(app, ((1/E)*(sigmaZ - (pRatio * (sigmaX + sigmaY)))) * 1e6 , app.DropDown_54.Value, '/');
            app.GammaXYEditField_2.Value = changeUnit(app, (tauXY/G) * 1e6 , app.DropDown_42.Value, '/');
            app.RotationAngleEditField_8.Value = changeUnit(app, G, app.DropDown_55.Value, '/');
            app.RotationAngleEditField_9.Value = changeUnit(app, G, app.DropDown_56.Value, '/');
            app.RotationAngleEditField_5.Value = changeUnit(app, E, app.DropDown_39.Value, '/');
            app.PoissonsRatioEditField_2.Value = pRatio;
        end

        function calcHookStress(app)
            sigmaX = changeUnit(app , app.EpsilonXEditField_2.Value , app.DropDown_40.Value , '*');
            sigmaY = changeUnit(app , app.EpsilonYEditField_2.Value , app.DropDown_41.Value, '*');
            sigmaZ = changeUnit(app , app.EpsilonZEditField.Value , app.DropDown_54.Value, '*');
            tauXY = changeUnit(app , app.GammaXYEditField_2.Value , app.DropDown_42.Value , '*');
            E = changeUnit(app , app.RotationAngleEditField_5.Value , app.DropDown_39.Value , '*');
            pRatio = app.PoissonsRatioEditField_2.Value;
            
            G = E/(2*(1 + pRatio));
            app.SigmaXEditField_2.Value = changeUnit(app , (E/(1-pRatio^2))*(sigmaX + (pRatio * (sigmaY + sigmaZ))) * 1e-6, app.DropDown_31.Value, '/');
            app.SigmaYEditField_2.Value = changeUnit(app , (E/(1-pRatio^2))*(sigmaY + (pRatio * (sigmaZ + sigmaX))) * 1e-6, app.DropDown_32.Value, '/');
            app.SigmaZEditField.Value = changeUnit(app, (E/(1-pRatio^2))*(sigmaZ + (pRatio * (sigmaX + sigmaY))) * 1e-6, app.DropDown_53.Value, '/');
            app.TauXYEditField_2.Value = changeUnit(app, G*tauXY, app.DropDown_33.Value, '/');
            app.RotationAngleEditField_9.Value = changeUnit(app, G, app.DropDown_56.Value, '/');
            app.RotationAngleEditField_8.Value = changeUnit(app, G, app.DropDown_55.Value, '/');
            app.RotationAngleEditField_4.Value = changeUnit(app, E, app.DropDown_35.Value, '/');
            app.PoissonsRatioEditField.Value = pRatio;
        end

        function calcVolumeChange(app)
            X = changeUnit(app , app.XEditField.Value , app.DropDown_48.Value , '*');
            Y = changeUnit(app , app.YEditField.Value , app.DropDown_49.Value, '*');
            Z = changeUnit(app , app.ZEditField.Value , app.DropDown_50.Value, '*');
            X = changeUnit(app , X , "Meter", '/');
            Y = changeUnit(app , Y , "Meter", '/');
            Z = changeUnit(app , Z , "Meter", '/');

            volume = X * Y * Z;
            app.VolumeEditField.Value = changeUnit(app , volume * 1e18, app.DropDown_51.Value , '/');

            sigmaX = changeUnit(app , app.EpsilonXEditField_2.Value , app.DropDown_40.Value , '*');
            sigmaY = changeUnit(app , app.EpsilonYEditField_2.Value , app.DropDown_41.Value, '*');
            sigmaZ = changeUnit(app , app.EpsilonZEditField.Value , app.DropDown_54.Value, '*');
            tauXY = changeUnit(app , app.GammaXYEditField_2.Value , app.DropDown_42.Value , '*');
            G = changeUnit(app, app.RotationAngleEditField_9.Value, app.DropDown_56.Value, '*');
            pRatio = app.PoissonsRatioEditField_2.Value;
            E = changeUnit(app , app.RotationAngleEditField_5.Value , app.DropDown_39.Value , '*');
            sigmaX = changeUnit(app , sigmaX , "Unit", '/');
            sigmaY = changeUnit(app , sigmaY , "Unit", '/');
            sigmaZ = changeUnit(app , sigmaZ , "Unit", '/');
            tauXY = changeUnit(app , tauXY , "Unit", '/');

            app.XEditField_2.Value = changeUnit(app , ((sigmaX * X) * 1e6), app.DropDown_63.Value, '/');
            app.YEditField_2.Value = changeUnit(app , ((sigmaY * Y) * 1e6), app.DropDown_64.Value, '/');
            app.ZEditField_2.Value = changeUnit(app , ((sigmaZ * Z) * 1e6), app.DropDown_65.Value, '/');

            unitVolumeChange = sigmaX + sigmaY + sigmaZ;
            app.RotationAngleEditField_12.Value = changeUnit(app , (unitVolumeChange * 1e6), app.DropDown_77.Value, '/');
            app.RotationAngleEditField_6.Value = changeUnit(app , (unitVolumeChange * volume * 1e18), app.DropDown_52.Value , '/');

            u = ((E / (2 * (1 - pRatio^2))) * (sigmaX^2 + sigmaY^2 + (2 * pRatio * sigmaX * sigmaY))) + ((G * tauXY^2) / 2);
            app.RotationAngleEditField_7.Value = u;
            app.RotationAngleEditField_16.Value = u * volume;
        end

        function calcModulus(app)
            sigmaX = changeUnit(app , app.SigmaXEditField_3.Value , app.DropDown_67.Value , '*');
            sigmaY = changeUnit(app , app.SigmaYEditField_3.Value , app.DropDown_68.Value, '*');
            epsilonX = changeUnit(app , app.EpsilonXEditField_3.Value , app.DropDown_72.Value , '*');
            epsilonY = changeUnit(app , app.EpsilonYEditField_3.Value , app.DropDown_73.Value, '*');
            epsilonX = changeUnit(app , epsilonX , "Unit", '/');
            epsilonY = changeUnit(app , epsilonY , "Unit", '/');

            equations = @(vars) [
                ((1/vars(1)) * (sigmaX - (vars(2) * sigmaY))) - epsilonX;
                ((1/vars(1)) * (sigmaY - (vars(2) * sigmaX))) - epsilonY
            ];

            initial_guess = [1; 0];
            solution = fminsearch(@(vars) norm(equations(vars)), initial_guess);

            G = solution(1) / (2 * (1 + solution(2)));

            app.RotationAngleEditField_14.Value = changeUnit(app , solution(1) , app.DropDown_75.Value , '/');
            app.RotationAngleEditField_15.Value = changeUnit(app , G , app.DropDown_76.Value , '/');
            app.PoissonsRatioEditField_3.Value = solution(2);
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: SigmaXEditField
        function SigmaXEditFieldValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: SigmaYEditField
        function SigmaYEditFieldValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: TauXYEditField
        function TauXYEditFieldValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: RotationAngleEditField
        function RotationAngleEditFieldValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown
        function DropDownValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_2
        function DropDown_2ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_3
        function DropDown_3ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_4
        function DropDown_4ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_5
        function DropDown_5ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_6
        function DropDown_6ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_7
        function DropDown_7ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_8
        function DropDown_8ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_9
        function DropDown_9ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_10
        function DropDown_10ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_11
        function DropDown_11ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_13
        function DropDown_13ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_15
        function DropDown_15ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_12
        function DropDown_12ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_14
        function DropDown_14ValueChanged(app, event)
            calcStressesOutput(app);
        end

        % Value changed function: EpsilonXEditField
        function EpsilonXEditFieldValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_16
        function DropDown_16ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: EpsilonYEditField
        function EpsilonYEditFieldValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_17
        function DropDown_17ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: GammaXYEditField
        function GammaXYEditFieldValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_18
        function DropDown_18ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: RotationAngleEditField_2
        function RotationAngleEditField_2ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_19
        function DropDown_19ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_24
        function DropDown_24ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_25
        function DropDown_25ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_26
        function DropDown_26ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_27
        function DropDown_27ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_28
        function DropDown_28ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_29
        function DropDown_29ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_30
        function DropDown_30ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_20
        function DropDown_20ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_21
        function DropDown_21ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_22
        function DropDown_22ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Value changed function: DropDown_23
        function DropDown_23ValueChanged(app, event)
            calcStrainsOutput(app);
        end

        % Button pushed function: PlotStressesMohrsCircleButton_2
        function PlotStressesMohrsCircleButton_2Pushed(app, event)
            app.SigmaXEditField.Value = app.SigmaXEditField_2.Value;
            app.SigmaYEditField.Value = app.SigmaYEditField_2.Value;
            app.TauXYEditField.Value = app.TauXYEditField_2.Value;
            app.DropDown.Value = app.DropDown_31.Value;
            app.DropDown_2.Value = app.DropDown_32.Value;
            app.DropDown_3.Value = app.DropDown_33.Value;
            app.TabGroup.SelectedTab = app.StressesTab;
            calcStressesOutput(app);
        end

        % Value changed function: DropDown_31
        function DropDown_31ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: DropDown_32
        function DropDown_32ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: DropDown_53
        function DropDown_53ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: DropDown_33
        function DropDown_33ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: DropDown_35
        function DropDown_35ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: DropDown_55
        function DropDown_55ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: ActiveStrainsSwitch
        function ActiveStrainsSwitchValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                app.EpsilonXEditField_2.Editable = "off";
                app.EpsilonYEditField_2.Editable = "off";
                app.EpsilonZEditField.Editable = "off";
                app.GammaXYEditField_2.Editable = "off";
                app.PoissonsRatioEditField_2.Editable = "off";
                app.RotationAngleEditField_5.Editable = "off";
                app.RotationAngleEditField_9.Editable = "off";
                app.PlotStressesMohrsCircleButton_2.Enable = "off";

                app.SigmaXEditField_2.Editable = "on";
                app.SigmaYEditField_2.Editable = "on";
                app.SigmaZEditField.Editable = "on";
                app.TauXYEditField_2.Editable = "on";
                app.PoissonsRatioEditField.Editable = "on";
                app.RotationAngleEditField_4.Editable = "on";
                app.RotationAngleEditField_8.Editable = "on";
                app.PlotStrainsMohrsCircleButton.Enable = "on";
            else
                app.EpsilonXEditField_2.Editable = "on";
                app.EpsilonYEditField_2.Editable = "on";
                app.EpsilonZEditField.Editable = "on";
                app.GammaXYEditField_2.Editable = "on";
                app.PoissonsRatioEditField_2.Editable = "on";
                app.RotationAngleEditField_5.Editable = "on";
                app.RotationAngleEditField_9.Editable = "on";
                app.PlotStressesMohrsCircleButton_2.Enable = "on";

                app.SigmaXEditField_2.Editable = "off";
                app.SigmaYEditField_2.Editable = "off";
                app.SigmaZEditField.Editable = "off";
                app.TauXYEditField_2.Editable = "off";
                app.PoissonsRatioEditField.Editable = "off";
                app.RotationAngleEditField_4.Editable = "off";
                app.RotationAngleEditField_8.Editable = "off";
                app.PlotStrainsMohrsCircleButton.Enable = "off";
            end
        end

        % Value changed function: SigmaXEditField_2
        function SigmaXEditField_2ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: SigmaYEditField_2
        function SigmaYEditField_2ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: SigmaZEditField
        function SigmaZEditFieldValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: TauXYEditField_2
        function TauXYEditField_2ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: PoissonsRatioEditField
        function PoissonsRatioEditFieldValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: RotationAngleEditField_4
        function RotationAngleEditField_4ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: RotationAngleEditField_8
        function RotationAngleEditField_8ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Selection change function: TabGroup
        function TabGroupSelectionChanged(app, event)
            if app.TabGroup.SelectedTab == app.HookesLawTab
                app.TabGroup.SelectedTab = app.HookesLawTab;
            end
        end

        % Value changed function: DropDown_40
        function DropDown_40ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: DropDown_41
        function DropDown_41ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: DropDown_54
        function DropDown_54ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: DropDown_42
        function DropDown_42ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: DropDown_39
        function DropDown_39ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: DropDown_56
        function DropDown_56ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: EpsilonXEditField_2
        function EpsilonXEditField_2ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: EpsilonYEditField_2
        function EpsilonYEditField_2ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: EpsilonZEditField
        function EpsilonZEditFieldValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: GammaXYEditField_2
        function GammaXYEditField_2ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: PoissonsRatioEditField_2
        function PoissonsRatioEditField_2ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: RotationAngleEditField_5
        function RotationAngleEditField_5ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Value changed function: RotationAngleEditField_9
        function RotationAngleEditField_9ValueChanged(app, event)
            if strcmp(app.ActiveStrainsSwitch.Value, 'Stresses')
                calcHookStrains(app);
            else
                calcHookStress(app);
            end
        end

        % Button pushed function: PlotStrainsMohrsCircleButton
        function PlotStrainsMohrsCircleButtonPushed(app, event)
            app.EpsilonXEditField.Value = app.EpsilonXEditField_2.Value;
            app.EpsilonYEditField.Value = app.EpsilonYEditField_2.Value;
            app.GammaXYEditField.Value = app.GammaXYEditField_2.Value;
            app.DropDown_16.Value = app.DropDown_40.Value;
            app.DropDown_17.Value = app.DropDown_41.Value;
            app.DropDown_18.Value = app.DropDown_42.Value;
            app.TabGroup.SelectedTab = app.StrainsTab;
            calcStrainsOutput(app);
        end

        % Button pushed function: 
        % CalcDimensionsChangesandStrainEnergyDensityButton
        function CalcDimensionsChangesandStrainEnergyDensityButtonPushed(app, event)
            calcVolumeChange(app);
        end

        % Value changed function: DropDown_48
        function DropDown_48ValueChanged(app, event)
            calcVolumeChange(app);
        end

        % Value changed function: DropDown_63
        function DropDown_63ValueChanged(app, event)
            calcVolumeChange(app);
        end

        % Value changed function: DropDown_49
        function DropDown_49ValueChanged(app, event)
            calcVolumeChange(app);
        end

        % Value changed function: DropDown_64
        function DropDown_64ValueChanged(app, event)
            calcVolumeChange(app);
        end

        % Value changed function: DropDown_50
        function DropDown_50ValueChanged(app, event)
            calcVolumeChange(app);
        end

        % Value changed function: DropDown_65
        function DropDown_65ValueChanged(app, event)
            calcVolumeChange(app);
        end

        % Value changed function: DropDown_51
        function DropDown_51ValueChanged(app, event)
            calcVolumeChange(app);
        end

        % Value changed function: DropDown_52
        function DropDown_52ValueChanged(app, event)
            calcVolumeChange(app);
        end

        % Value changed function: DropDown_77
        function DropDown_77ValueChanged(app, event)
            calcVolumeChange(app);
        end

        % Button pushed function: UseinStressesandStrainsButton
        function UseinStressesandStrainsButtonPushed(app, event)
            app.PoissonsRatioEditField.Value = app.PoissonsRatioEditField_3.Value;
            app.PoissonsRatioEditField_2.Value = app.PoissonsRatioEditField_3.Value;

            app.RotationAngleEditField_4.Value = app.RotationAngleEditField_14.Value;
            app.DropDown_35.Value = app.DropDown_75.Value;
            app.RotationAngleEditField_5.Value = app.RotationAngleEditField_14.Value;
            app.DropDown_39.Value = app.DropDown_75.Value;

            app.RotationAngleEditField_8.Value = app.RotationAngleEditField_15.Value;
            app.DropDown_55.Value = app.DropDown_76.Value;
            app.RotationAngleEditField_9.Value = app.RotationAngleEditField_15.Value;
            app.DropDown_56.Value = app.DropDown_76.Value;
        end

        % Value changed function: DropDown_67
        function DropDown_67ValueChanged(app, event)
            calcModulus(app);
        end

        % Value changed function: DropDown_72
        function DropDown_72ValueChanged(app, event)
            calcModulus(app);
        end

        % Value changed function: DropDown_68
        function DropDown_68ValueChanged(app, event)
            calcModulus(app);
        end

        % Value changed function: DropDown_73
        function DropDown_73ValueChanged(app, event)
            calcModulus(app);
        end

        % Value changed function: DropDown_75
        function DropDown_75ValueChanged(app, event)
            calcModulus(app);
        end

        % Value changed function: DropDown_76
        function DropDown_76ValueChanged(app, event)
            calcModulus(app);
        end

        % Value changed function: SigmaXEditField_3
        function SigmaXEditField_3ValueChanged(app, event)
            calcModulus(app);
        end

        % Value changed function: EpsilonXEditField_3
        function EpsilonXEditField_3ValueChanged(app, event)
            calcModulus(app);
        end

        % Value changed function: SigmaYEditField_3
        function SigmaYEditField_3ValueChanged(app, event)
            calcModulus(app);
        end

        % Value changed function: EpsilonYEditField_3
        function EpsilonYEditField_3ValueChanged(app, event)
            calcModulus(app);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create StressesCalculatorUIFigure and hide until all components are created
            app.StressesCalculatorUIFigure = uifigure('Visible', 'off');
            app.StressesCalculatorUIFigure.AutoResizeChildren = 'off';
            app.StressesCalculatorUIFigure.Position = [0 50 640 792];
            app.StressesCalculatorUIFigure.Name = 'Stresses Calculator';
            app.StressesCalculatorUIFigure.Icon = fullfile(pathToMLAPP, 'calculator.png');
            app.StressesCalculatorUIFigure.Resize = 'off';
            app.StressesCalculatorUIFigure.Scrollable = 'on';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.StressesCalculatorUIFigure);
            app.TabGroup.AutoResizeChildren = 'off';
            app.TabGroup.SelectionChangedFcn = createCallbackFcn(app, @TabGroupSelectionChanged, true);
            app.TabGroup.Position = [1 2 639 791];

            % Create StressesTab
            app.StressesTab = uitab(app.TabGroup);
            app.StressesTab.AutoResizeChildren = 'off';
            app.StressesTab.Title = 'Stresses';
            app.StressesTab.Scrollable = 'on';

            % Create GridLayout6
            app.GridLayout6 = uigridlayout(app.StressesTab);
            app.GridLayout6.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.GridLayout6);
            title(app.UIAxes5, 'Mohr''s Circle')
            xlabel(app.UIAxes5, 'Sigma X1 (in Pa)')
            ylabel(app.UIAxes5, 'Tau X1Y1 (in Pa)')
            zlabel(app.UIAxes5, 'Z')
            app.UIAxes5.GridLineStyle = '-.';
            app.UIAxes5.XColor = [0 0 0];
            app.UIAxes5.TitleHorizontalAlignment = 'right';
            app.UIAxes5.TickDir = 'in';
            app.UIAxes5.XGrid = 'on';
            app.UIAxes5.YGrid = 'on';
            app.UIAxes5.Layout.Row = [4 9];
            app.UIAxes5.Layout.Column = 1;

            % Create UIAxes8
            app.UIAxes8 = uiaxes(app.GridLayout6);
            title(app.UIAxes8, 'Original Stresses Sketch')
            xlabel(app.UIAxes8, 'X')
            ylabel(app.UIAxes8, 'Y')
            zlabel(app.UIAxes8, 'Z')
            app.UIAxes8.GridLineStyle = 'none';
            app.UIAxes8.XGrid = 'on';
            app.UIAxes8.YGrid = 'on';
            app.UIAxes8.Layout.Row = [10 12];
            app.UIAxes8.Layout.Column = 1;

            % Create UIAxes7
            app.UIAxes7 = uiaxes(app.GridLayout6);
            title(app.UIAxes7, 'Principal Stresses Sketch')
            xlabel(app.UIAxes7, 'X')
            ylabel(app.UIAxes7, 'Y')
            zlabel(app.UIAxes7, 'Z')
            app.UIAxes7.GridLineStyle = 'none';
            app.UIAxes7.XGrid = 'on';
            app.UIAxes7.YGrid = 'on';
            app.UIAxes7.Layout.Row = [13 15];
            app.UIAxes7.Layout.Column = 1;

            % Create UIAxes6
            app.UIAxes6 = uiaxes(app.GridLayout6);
            title(app.UIAxes6, 'Rotation Stresses Sketch')
            xlabel(app.UIAxes6, 'X')
            ylabel(app.UIAxes6, 'Y')
            zlabel(app.UIAxes6, 'Z')
            app.UIAxes6.GridLineStyle = 'none';
            app.UIAxes6.XGrid = 'on';
            app.UIAxes6.YGrid = 'on';
            app.UIAxes6.Layout.Row = [10 12];
            app.UIAxes6.Layout.Column = 2;

            % Create UIAxes9
            app.UIAxes9 = uiaxes(app.GridLayout6);
            title(app.UIAxes9, 'Max Shear Stresses Sketch')
            xlabel(app.UIAxes9, 'X')
            ylabel(app.UIAxes9, 'Y')
            zlabel(app.UIAxes9, 'Z')
            app.UIAxes9.GridLineStyle = 'none';
            app.UIAxes9.XGrid = 'on';
            app.UIAxes9.YGrid = 'on';
            app.UIAxes9.Layout.Row = [13 15];
            app.UIAxes9.Layout.Column = 2;

            % Create InputParamtersPanel
            app.InputParamtersPanel = uipanel(app.GridLayout6);
            app.InputParamtersPanel.AutoResizeChildren = 'off';
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
            app.DropDown.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown.ValueChangedFcn = createCallbackFcn(app, @DropDownValueChanged, true);
            app.DropDown.FontSize = 10;
            app.DropDown.Layout.Row = 1;
            app.DropDown.Layout.Column = 3;
            app.DropDown.Value = 'Pa';

            % Create DropDown_2
            app.DropDown_2 = uidropdown(app.GridLayout2);
            app.DropDown_2.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_2.ValueChangedFcn = createCallbackFcn(app, @DropDown_2ValueChanged, true);
            app.DropDown_2.FontSize = 10;
            app.DropDown_2.Layout.Row = 2;
            app.DropDown_2.Layout.Column = 3;
            app.DropDown_2.Value = 'Pa';

            % Create DropDown_3
            app.DropDown_3 = uidropdown(app.GridLayout2);
            app.DropDown_3.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
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
            app.OutputParamtersPanel = uipanel(app.GridLayout6);
            app.OutputParamtersPanel.AutoResizeChildren = 'off';
            app.OutputParamtersPanel.Title = 'Output Paramters';
            app.OutputParamtersPanel.Layout.Row = [1 9];
            app.OutputParamtersPanel.Layout.Column = 2;

            % Create GridLayout3
            app.GridLayout3 = uigridlayout(app.OutputParamtersPanel);
            app.GridLayout3.RowHeight = {'0.9x', '0.9x', '1.1x', '1.1x', '1.1x', '1.1x'};

            % Create MaximumShearStressPanel
            app.MaximumShearStressPanel = uipanel(app.GridLayout3);
            app.MaximumShearStressPanel.AutoResizeChildren = 'off';
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

            % Create AvgNormalStressEditFieldLabel
            app.AvgNormalStressEditFieldLabel = uilabel(app.GridLayout2_4);
            app.AvgNormalStressEditFieldLabel.FontSize = 11;
            app.AvgNormalStressEditFieldLabel.Layout.Row = 4;
            app.AvgNormalStressEditFieldLabel.Layout.Column = 1;
            app.AvgNormalStressEditFieldLabel.Text = 'Avg Normal Stress';

            % Create AvgNormalStressEditField
            app.AvgNormalStressEditField = uieditfield(app.GridLayout2_4, 'numeric');
            app.AvgNormalStressEditField.ValueDisplayFormat = '%11.6g';
            app.AvgNormalStressEditField.Editable = 'off';
            app.AvgNormalStressEditField.HorizontalAlignment = 'left';
            app.AvgNormalStressEditField.FontSize = 11;
            app.AvgNormalStressEditField.Layout.Row = 4;
            app.AvgNormalStressEditField.Layout.Column = 2;

            % Create DropDown_12
            app.DropDown_12 = uidropdown(app.GridLayout2_4);
            app.DropDown_12.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
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
            app.DropDown_14.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_14.ValueChangedFcn = createCallbackFcn(app, @DropDown_14ValueChanged, true);
            app.DropDown_14.FontSize = 10;
            app.DropDown_14.Layout.Row = 4;
            app.DropDown_14.Layout.Column = 3;
            app.DropDown_14.Value = 'Pa';

            % Create RotationStressesPanel
            app.RotationStressesPanel = uipanel(app.GridLayout3);
            app.RotationStressesPanel.AutoResizeChildren = 'off';
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
            app.DropDown_5.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_5.ValueChangedFcn = createCallbackFcn(app, @DropDown_5ValueChanged, true);
            app.DropDown_5.FontSize = 10;
            app.DropDown_5.Layout.Row = 1;
            app.DropDown_5.Layout.Column = 3;
            app.DropDown_5.Value = 'Pa';

            % Create DropDown_6
            app.DropDown_6 = uidropdown(app.GridLayout2_2);
            app.DropDown_6.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_6.ValueChangedFcn = createCallbackFcn(app, @DropDown_6ValueChanged, true);
            app.DropDown_6.FontSize = 10;
            app.DropDown_6.Layout.Row = 2;
            app.DropDown_6.Layout.Column = 3;
            app.DropDown_6.Value = 'Pa';

            % Create DropDown_7
            app.DropDown_7 = uidropdown(app.GridLayout2_2);
            app.DropDown_7.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_7.ValueChangedFcn = createCallbackFcn(app, @DropDown_7ValueChanged, true);
            app.DropDown_7.FontSize = 10;
            app.DropDown_7.Layout.Row = 3;
            app.DropDown_7.Layout.Column = 3;
            app.DropDown_7.Value = 'Pa';

            % Create PrincipalStressesPanel
            app.PrincipalStressesPanel = uipanel(app.GridLayout3);
            app.PrincipalStressesPanel.AutoResizeChildren = 'off';
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
            app.DropDown_8.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
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
            app.DropDown_10.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
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

            % Create StrainsTab
            app.StrainsTab = uitab(app.TabGroup);
            app.StrainsTab.AutoResizeChildren = 'off';
            app.StrainsTab.Title = 'Strains';
            app.StrainsTab.Scrollable = 'on';

            % Create GridLayout6_2
            app.GridLayout6_2 = uigridlayout(app.StrainsTab);
            app.GridLayout6_2.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};

            % Create UIAxes5_2
            app.UIAxes5_2 = uiaxes(app.GridLayout6_2);
            title(app.UIAxes5_2, 'Mohr''s Circle')
            xlabel(app.UIAxes5_2, 'Epsilon X1 (in Micro)')
            ylabel(app.UIAxes5_2, 'Half Gamma X1Y1 (in Micro)')
            zlabel(app.UIAxes5_2, 'Z')
            app.UIAxes5_2.GridLineStyle = '-.';
            app.UIAxes5_2.XColor = [0 0 0];
            app.UIAxes5_2.TitleHorizontalAlignment = 'right';
            app.UIAxes5_2.TickDir = 'in';
            app.UIAxes5_2.XGrid = 'on';
            app.UIAxes5_2.YGrid = 'on';
            app.UIAxes5_2.Layout.Row = [4 9];
            app.UIAxes5_2.Layout.Column = 1;

            % Create UIAxes8_2
            app.UIAxes8_2 = uiaxes(app.GridLayout6_2);
            title(app.UIAxes8_2, 'Original Strains Sketch')
            xlabel(app.UIAxes8_2, 'X')
            ylabel(app.UIAxes8_2, 'Y')
            zlabel(app.UIAxes8_2, 'Z')
            app.UIAxes8_2.GridLineStyle = 'none';
            app.UIAxes8_2.XGrid = 'on';
            app.UIAxes8_2.YGrid = 'on';
            app.UIAxes8_2.Layout.Row = [10 12];
            app.UIAxes8_2.Layout.Column = 1;

            % Create UIAxes7_2
            app.UIAxes7_2 = uiaxes(app.GridLayout6_2);
            title(app.UIAxes7_2, 'Principal Strains Sketch')
            xlabel(app.UIAxes7_2, 'X')
            ylabel(app.UIAxes7_2, 'Y')
            zlabel(app.UIAxes7_2, 'Z')
            app.UIAxes7_2.GridLineStyle = 'none';
            app.UIAxes7_2.XGrid = 'on';
            app.UIAxes7_2.YGrid = 'on';
            app.UIAxes7_2.Layout.Row = [13 15];
            app.UIAxes7_2.Layout.Column = 1;

            % Create UIAxes6_2
            app.UIAxes6_2 = uiaxes(app.GridLayout6_2);
            title(app.UIAxes6_2, 'Rotation Strains Sketch')
            xlabel(app.UIAxes6_2, 'X')
            ylabel(app.UIAxes6_2, 'Y')
            zlabel(app.UIAxes6_2, 'Z')
            app.UIAxes6_2.GridLineStyle = 'none';
            app.UIAxes6_2.XGrid = 'on';
            app.UIAxes6_2.YGrid = 'on';
            app.UIAxes6_2.Layout.Row = [10 12];
            app.UIAxes6_2.Layout.Column = 2;

            % Create UIAxes9_2
            app.UIAxes9_2 = uiaxes(app.GridLayout6_2);
            title(app.UIAxes9_2, 'Max Shear Strains Sketch')
            xlabel(app.UIAxes9_2, 'X')
            ylabel(app.UIAxes9_2, 'Y')
            zlabel(app.UIAxes9_2, 'Z')
            app.UIAxes9_2.GridLineStyle = 'none';
            app.UIAxes9_2.XGrid = 'on';
            app.UIAxes9_2.YGrid = 'on';
            app.UIAxes9_2.Layout.Row = [13 15];
            app.UIAxes9_2.Layout.Column = 2;

            % Create InputParamtersPanel_2
            app.InputParamtersPanel_2 = uipanel(app.GridLayout6_2);
            app.InputParamtersPanel_2.AutoResizeChildren = 'off';
            app.InputParamtersPanel_2.Title = 'Input Paramters';
            app.InputParamtersPanel_2.Layout.Row = [1 3];
            app.InputParamtersPanel_2.Layout.Column = 1;

            % Create GridLayout2_5
            app.GridLayout2_5 = uigridlayout(app.InputParamtersPanel_2);
            app.GridLayout2_5.ColumnWidth = {'1x', '1x', '0.7x'};
            app.GridLayout2_5.RowHeight = {'1x', '1x', '1x', '1x'};

            % Create EpsilonXEditFieldLabel
            app.EpsilonXEditFieldLabel = uilabel(app.GridLayout2_5);
            app.EpsilonXEditFieldLabel.Layout.Row = 1;
            app.EpsilonXEditFieldLabel.Layout.Column = 1;
            app.EpsilonXEditFieldLabel.Text = 'Epsilon X';

            % Create EpsilonXEditField
            app.EpsilonXEditField = uieditfield(app.GridLayout2_5, 'numeric');
            app.EpsilonXEditField.ValueDisplayFormat = '%11.6g';
            app.EpsilonXEditField.ValueChangedFcn = createCallbackFcn(app, @EpsilonXEditFieldValueChanged, true);
            app.EpsilonXEditField.HorizontalAlignment = 'left';
            app.EpsilonXEditField.Layout.Row = 1;
            app.EpsilonXEditField.Layout.Column = 2;

            % Create EpsilonYEditFieldLabel
            app.EpsilonYEditFieldLabel = uilabel(app.GridLayout2_5);
            app.EpsilonYEditFieldLabel.Layout.Row = 2;
            app.EpsilonYEditFieldLabel.Layout.Column = 1;
            app.EpsilonYEditFieldLabel.Text = 'Epsilon Y';

            % Create EpsilonYEditField
            app.EpsilonYEditField = uieditfield(app.GridLayout2_5, 'numeric');
            app.EpsilonYEditField.ValueDisplayFormat = '%11.6g';
            app.EpsilonYEditField.ValueChangedFcn = createCallbackFcn(app, @EpsilonYEditFieldValueChanged, true);
            app.EpsilonYEditField.HorizontalAlignment = 'left';
            app.EpsilonYEditField.Layout.Row = 2;
            app.EpsilonYEditField.Layout.Column = 2;

            % Create GammaXYEditFieldLabel
            app.GammaXYEditFieldLabel = uilabel(app.GridLayout2_5);
            app.GammaXYEditFieldLabel.Layout.Row = 3;
            app.GammaXYEditFieldLabel.Layout.Column = 1;
            app.GammaXYEditFieldLabel.Text = 'Gamma XY';

            % Create GammaXYEditField
            app.GammaXYEditField = uieditfield(app.GridLayout2_5, 'numeric');
            app.GammaXYEditField.ValueDisplayFormat = '%11.6g';
            app.GammaXYEditField.ValueChangedFcn = createCallbackFcn(app, @GammaXYEditFieldValueChanged, true);
            app.GammaXYEditField.HorizontalAlignment = 'left';
            app.GammaXYEditField.Layout.Row = 3;
            app.GammaXYEditField.Layout.Column = 2;

            % Create RotationAngleEditField_2Label
            app.RotationAngleEditField_2Label = uilabel(app.GridLayout2_5);
            app.RotationAngleEditField_2Label.Layout.Row = 4;
            app.RotationAngleEditField_2Label.Layout.Column = 1;
            app.RotationAngleEditField_2Label.Text = 'Rotation Angle';

            % Create RotationAngleEditField_2
            app.RotationAngleEditField_2 = uieditfield(app.GridLayout2_5, 'numeric');
            app.RotationAngleEditField_2.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField_2.ValueChangedFcn = createCallbackFcn(app, @RotationAngleEditField_2ValueChanged, true);
            app.RotationAngleEditField_2.HorizontalAlignment = 'left';
            app.RotationAngleEditField_2.Layout.Row = 4;
            app.RotationAngleEditField_2.Layout.Column = 2;

            % Create DropDown_16
            app.DropDown_16 = uidropdown(app.GridLayout2_5);
            app.DropDown_16.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_16.ValueChangedFcn = createCallbackFcn(app, @DropDown_16ValueChanged, true);
            app.DropDown_16.FontSize = 10;
            app.DropDown_16.Layout.Row = 1;
            app.DropDown_16.Layout.Column = 3;
            app.DropDown_16.Value = 'Micro';

            % Create DropDown_17
            app.DropDown_17 = uidropdown(app.GridLayout2_5);
            app.DropDown_17.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_17.ValueChangedFcn = createCallbackFcn(app, @DropDown_17ValueChanged, true);
            app.DropDown_17.FontSize = 10;
            app.DropDown_17.Layout.Row = 2;
            app.DropDown_17.Layout.Column = 3;
            app.DropDown_17.Value = 'Micro';

            % Create DropDown_18
            app.DropDown_18 = uidropdown(app.GridLayout2_5);
            app.DropDown_18.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_18.ValueChangedFcn = createCallbackFcn(app, @DropDown_18ValueChanged, true);
            app.DropDown_18.FontSize = 10;
            app.DropDown_18.Layout.Row = 3;
            app.DropDown_18.Layout.Column = 3;
            app.DropDown_18.Value = 'Micro';

            % Create DropDown_19
            app.DropDown_19 = uidropdown(app.GridLayout2_5);
            app.DropDown_19.Items = {'Deg', 'Rad'};
            app.DropDown_19.ValueChangedFcn = createCallbackFcn(app, @DropDown_19ValueChanged, true);
            app.DropDown_19.FontSize = 10;
            app.DropDown_19.Layout.Row = 4;
            app.DropDown_19.Layout.Column = 3;
            app.DropDown_19.Value = 'Deg';

            % Create OutputParamtersPanel_2
            app.OutputParamtersPanel_2 = uipanel(app.GridLayout6_2);
            app.OutputParamtersPanel_2.AutoResizeChildren = 'off';
            app.OutputParamtersPanel_2.Title = 'Output Paramters';
            app.OutputParamtersPanel_2.Layout.Row = [1 9];
            app.OutputParamtersPanel_2.Layout.Column = 2;

            % Create GridLayout3_2
            app.GridLayout3_2 = uigridlayout(app.OutputParamtersPanel_2);
            app.GridLayout3_2.RowHeight = {'0.9x', '0.9x', '1.1x', '1.1x', '1.1x', '1.1x'};

            % Create MaximumShearStrainPanel
            app.MaximumShearStrainPanel = uipanel(app.GridLayout3_2);
            app.MaximumShearStrainPanel.AutoResizeChildren = 'off';
            app.MaximumShearStrainPanel.Title = 'Maximum Shear Strain';
            app.MaximumShearStrainPanel.Layout.Row = [5 6];
            app.MaximumShearStrainPanel.Layout.Column = [1 2];

            % Create GridLayout2_6
            app.GridLayout2_6 = uigridlayout(app.MaximumShearStrainPanel);
            app.GridLayout2_6.ColumnWidth = {'1.1x', '1x', '0.7x'};
            app.GridLayout2_6.RowHeight = {'1x', '1x', '1x', '1x'};

            % Create GammaXYMaxEditFieldLabel
            app.GammaXYMaxEditFieldLabel = uilabel(app.GridLayout2_6);
            app.GammaXYMaxEditFieldLabel.Layout.Row = 1;
            app.GammaXYMaxEditFieldLabel.Layout.Column = 1;
            app.GammaXYMaxEditFieldLabel.Text = 'Gamma XY Max';

            % Create GammaXYMaxEditField
            app.GammaXYMaxEditField = uieditfield(app.GridLayout2_6, 'numeric');
            app.GammaXYMaxEditField.ValueDisplayFormat = '%11.6g';
            app.GammaXYMaxEditField.Editable = 'off';
            app.GammaXYMaxEditField.HorizontalAlignment = 'left';
            app.GammaXYMaxEditField.Layout.Row = 1;
            app.GammaXYMaxEditField.Layout.Column = 2;

            % Create Angle1EditField_2Label
            app.Angle1EditField_2Label = uilabel(app.GridLayout2_6);
            app.Angle1EditField_2Label.Layout.Row = 2;
            app.Angle1EditField_2Label.Layout.Column = 1;
            app.Angle1EditField_2Label.Text = 'Angle 1';

            % Create Angle1EditField_2
            app.Angle1EditField_2 = uieditfield(app.GridLayout2_6, 'numeric');
            app.Angle1EditField_2.ValueDisplayFormat = '%11.6g';
            app.Angle1EditField_2.Editable = 'off';
            app.Angle1EditField_2.HorizontalAlignment = 'left';
            app.Angle1EditField_2.Layout.Row = 2;
            app.Angle1EditField_2.Layout.Column = 2;

            % Create Angle2EditField_2Label
            app.Angle2EditField_2Label = uilabel(app.GridLayout2_6);
            app.Angle2EditField_2Label.Layout.Row = 3;
            app.Angle2EditField_2Label.Layout.Column = 1;
            app.Angle2EditField_2Label.Text = 'Angle 2';

            % Create Angle2EditField_2
            app.Angle2EditField_2 = uieditfield(app.GridLayout2_6, 'numeric');
            app.Angle2EditField_2.ValueDisplayFormat = '%11.6g';
            app.Angle2EditField_2.Editable = 'off';
            app.Angle2EditField_2.HorizontalAlignment = 'left';
            app.Angle2EditField_2.Layout.Row = 3;
            app.Angle2EditField_2.Layout.Column = 2;

            % Create AvgNormalStrainEditFieldLabel
            app.AvgNormalStrainEditFieldLabel = uilabel(app.GridLayout2_6);
            app.AvgNormalStrainEditFieldLabel.FontSize = 11.5;
            app.AvgNormalStrainEditFieldLabel.Layout.Row = 4;
            app.AvgNormalStrainEditFieldLabel.Layout.Column = 1;
            app.AvgNormalStrainEditFieldLabel.Text = 'Avg Normal Strain';

            % Create AvgNormalStrainEditField
            app.AvgNormalStrainEditField = uieditfield(app.GridLayout2_6, 'numeric');
            app.AvgNormalStrainEditField.ValueDisplayFormat = '%11.6g';
            app.AvgNormalStrainEditField.Editable = 'off';
            app.AvgNormalStrainEditField.HorizontalAlignment = 'left';
            app.AvgNormalStrainEditField.FontSize = 11.5;
            app.AvgNormalStrainEditField.Layout.Row = 4;
            app.AvgNormalStrainEditField.Layout.Column = 2;

            % Create DropDown_20
            app.DropDown_20 = uidropdown(app.GridLayout2_6);
            app.DropDown_20.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_20.ValueChangedFcn = createCallbackFcn(app, @DropDown_20ValueChanged, true);
            app.DropDown_20.FontSize = 10;
            app.DropDown_20.Layout.Row = 1;
            app.DropDown_20.Layout.Column = 3;
            app.DropDown_20.Value = 'Micro';

            % Create DropDown_21
            app.DropDown_21 = uidropdown(app.GridLayout2_6);
            app.DropDown_21.Items = {'Deg', 'Rad'};
            app.DropDown_21.ValueChangedFcn = createCallbackFcn(app, @DropDown_21ValueChanged, true);
            app.DropDown_21.FontSize = 10;
            app.DropDown_21.Layout.Row = 2;
            app.DropDown_21.Layout.Column = 3;
            app.DropDown_21.Value = 'Deg';

            % Create DropDown_22
            app.DropDown_22 = uidropdown(app.GridLayout2_6);
            app.DropDown_22.Items = {'Deg', 'Rad'};
            app.DropDown_22.ValueChangedFcn = createCallbackFcn(app, @DropDown_22ValueChanged, true);
            app.DropDown_22.FontSize = 10;
            app.DropDown_22.Layout.Row = 3;
            app.DropDown_22.Layout.Column = 3;
            app.DropDown_22.Value = 'Deg';

            % Create DropDown_23
            app.DropDown_23 = uidropdown(app.GridLayout2_6);
            app.DropDown_23.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_23.ValueChangedFcn = createCallbackFcn(app, @DropDown_23ValueChanged, true);
            app.DropDown_23.FontSize = 10;
            app.DropDown_23.Layout.Row = 4;
            app.DropDown_23.Layout.Column = 3;
            app.DropDown_23.Value = 'Micro';

            % Create RotationStrainsPanel
            app.RotationStrainsPanel = uipanel(app.GridLayout3_2);
            app.RotationStrainsPanel.AutoResizeChildren = 'off';
            app.RotationStrainsPanel.Title = 'Rotation Strains';
            app.RotationStrainsPanel.Layout.Row = [1 2];
            app.RotationStrainsPanel.Layout.Column = [1 2];

            % Create GridLayout2_7
            app.GridLayout2_7 = uigridlayout(app.RotationStrainsPanel);
            app.GridLayout2_7.ColumnWidth = {'1x', '1x', '0.7x'};
            app.GridLayout2_7.RowHeight = {'1x', '1x', '1x'};

            % Create EpsilonX1EditFieldLabel
            app.EpsilonX1EditFieldLabel = uilabel(app.GridLayout2_7);
            app.EpsilonX1EditFieldLabel.Layout.Row = 1;
            app.EpsilonX1EditFieldLabel.Layout.Column = 1;
            app.EpsilonX1EditFieldLabel.Text = 'Epsilon X1';

            % Create EpsilonX1EditField
            app.EpsilonX1EditField = uieditfield(app.GridLayout2_7, 'numeric');
            app.EpsilonX1EditField.ValueDisplayFormat = '%11.6g';
            app.EpsilonX1EditField.Editable = 'off';
            app.EpsilonX1EditField.HorizontalAlignment = 'left';
            app.EpsilonX1EditField.Layout.Row = 1;
            app.EpsilonX1EditField.Layout.Column = 2;

            % Create EpsilonY1EditFieldLabel
            app.EpsilonY1EditFieldLabel = uilabel(app.GridLayout2_7);
            app.EpsilonY1EditFieldLabel.Layout.Row = 2;
            app.EpsilonY1EditFieldLabel.Layout.Column = 1;
            app.EpsilonY1EditFieldLabel.Text = 'Epsilon Y1';

            % Create EpsilonY1EditField
            app.EpsilonY1EditField = uieditfield(app.GridLayout2_7, 'numeric');
            app.EpsilonY1EditField.ValueDisplayFormat = '%11.6g';
            app.EpsilonY1EditField.Editable = 'off';
            app.EpsilonY1EditField.HorizontalAlignment = 'left';
            app.EpsilonY1EditField.Layout.Row = 2;
            app.EpsilonY1EditField.Layout.Column = 2;

            % Create GammaX1Y1EditFieldLabel
            app.GammaX1Y1EditFieldLabel = uilabel(app.GridLayout2_7);
            app.GammaX1Y1EditFieldLabel.Layout.Row = 3;
            app.GammaX1Y1EditFieldLabel.Layout.Column = 1;
            app.GammaX1Y1EditFieldLabel.Text = 'Gamma X1Y1';

            % Create GammaX1Y1EditField
            app.GammaX1Y1EditField = uieditfield(app.GridLayout2_7, 'numeric');
            app.GammaX1Y1EditField.ValueDisplayFormat = '%11.6g';
            app.GammaX1Y1EditField.Editable = 'off';
            app.GammaX1Y1EditField.HorizontalAlignment = 'left';
            app.GammaX1Y1EditField.Layout.Row = 3;
            app.GammaX1Y1EditField.Layout.Column = 2;

            % Create DropDown_24
            app.DropDown_24 = uidropdown(app.GridLayout2_7);
            app.DropDown_24.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_24.ValueChangedFcn = createCallbackFcn(app, @DropDown_24ValueChanged, true);
            app.DropDown_24.FontSize = 10;
            app.DropDown_24.Layout.Row = 1;
            app.DropDown_24.Layout.Column = 3;
            app.DropDown_24.Value = 'Micro';

            % Create DropDown_25
            app.DropDown_25 = uidropdown(app.GridLayout2_7);
            app.DropDown_25.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_25.ValueChangedFcn = createCallbackFcn(app, @DropDown_25ValueChanged, true);
            app.DropDown_25.FontSize = 10;
            app.DropDown_25.Layout.Row = 2;
            app.DropDown_25.Layout.Column = 3;
            app.DropDown_25.Value = 'Micro';

            % Create DropDown_26
            app.DropDown_26 = uidropdown(app.GridLayout2_7);
            app.DropDown_26.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_26.ValueChangedFcn = createCallbackFcn(app, @DropDown_26ValueChanged, true);
            app.DropDown_26.FontSize = 10;
            app.DropDown_26.Layout.Row = 3;
            app.DropDown_26.Layout.Column = 3;
            app.DropDown_26.Value = 'Micro';

            % Create PrincipalStrainsPanel
            app.PrincipalStrainsPanel = uipanel(app.GridLayout3_2);
            app.PrincipalStrainsPanel.AutoResizeChildren = 'off';
            app.PrincipalStrainsPanel.Title = 'Principal Strains';
            app.PrincipalStrainsPanel.Layout.Row = [3 4];
            app.PrincipalStrainsPanel.Layout.Column = [1 2];

            % Create GridLayout2_8
            app.GridLayout2_8 = uigridlayout(app.PrincipalStrainsPanel);
            app.GridLayout2_8.ColumnWidth = {'1.1x', '1x', '0.7x'};
            app.GridLayout2_8.RowHeight = {'1x', '1x', '1x', '1x'};

            % Create Epsilon1EditFieldLabel
            app.Epsilon1EditFieldLabel = uilabel(app.GridLayout2_8);
            app.Epsilon1EditFieldLabel.Layout.Row = 1;
            app.Epsilon1EditFieldLabel.Layout.Column = 1;
            app.Epsilon1EditFieldLabel.Text = 'Epsilon 1';

            % Create Epsilon1EditField
            app.Epsilon1EditField = uieditfield(app.GridLayout2_8, 'numeric');
            app.Epsilon1EditField.ValueDisplayFormat = '%11.6g';
            app.Epsilon1EditField.Editable = 'off';
            app.Epsilon1EditField.HorizontalAlignment = 'left';
            app.Epsilon1EditField.Layout.Row = 1;
            app.Epsilon1EditField.Layout.Column = 2;

            % Create PrincipalAngle1EditField_2Label
            app.PrincipalAngle1EditField_2Label = uilabel(app.GridLayout2_8);
            app.PrincipalAngle1EditField_2Label.Layout.Row = 2;
            app.PrincipalAngle1EditField_2Label.Layout.Column = 1;
            app.PrincipalAngle1EditField_2Label.Text = 'Principal Angle 1';

            % Create PrincipalAngle1EditField_2
            app.PrincipalAngle1EditField_2 = uieditfield(app.GridLayout2_8, 'numeric');
            app.PrincipalAngle1EditField_2.ValueDisplayFormat = '%11.6g';
            app.PrincipalAngle1EditField_2.Editable = 'off';
            app.PrincipalAngle1EditField_2.HorizontalAlignment = 'left';
            app.PrincipalAngle1EditField_2.Layout.Row = 2;
            app.PrincipalAngle1EditField_2.Layout.Column = 2;

            % Create Epsilon2EditFieldLabel
            app.Epsilon2EditFieldLabel = uilabel(app.GridLayout2_8);
            app.Epsilon2EditFieldLabel.Layout.Row = 3;
            app.Epsilon2EditFieldLabel.Layout.Column = 1;
            app.Epsilon2EditFieldLabel.Text = 'Epsilon 2';

            % Create Epsilon2EditField
            app.Epsilon2EditField = uieditfield(app.GridLayout2_8, 'numeric');
            app.Epsilon2EditField.ValueDisplayFormat = '%11.6g';
            app.Epsilon2EditField.Editable = 'off';
            app.Epsilon2EditField.HorizontalAlignment = 'left';
            app.Epsilon2EditField.Layout.Row = 3;
            app.Epsilon2EditField.Layout.Column = 2;

            % Create PrincipalAngle2EditField_2Label
            app.PrincipalAngle2EditField_2Label = uilabel(app.GridLayout2_8);
            app.PrincipalAngle2EditField_2Label.Layout.Row = 4;
            app.PrincipalAngle2EditField_2Label.Layout.Column = 1;
            app.PrincipalAngle2EditField_2Label.Text = 'Principal Angle 2';

            % Create PrincipalAngle2EditField_2
            app.PrincipalAngle2EditField_2 = uieditfield(app.GridLayout2_8, 'numeric');
            app.PrincipalAngle2EditField_2.ValueDisplayFormat = '%11.6g';
            app.PrincipalAngle2EditField_2.Editable = 'off';
            app.PrincipalAngle2EditField_2.HorizontalAlignment = 'left';
            app.PrincipalAngle2EditField_2.Layout.Row = 4;
            app.PrincipalAngle2EditField_2.Layout.Column = 2;

            % Create DropDown_27
            app.DropDown_27 = uidropdown(app.GridLayout2_8);
            app.DropDown_27.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_27.ValueChangedFcn = createCallbackFcn(app, @DropDown_27ValueChanged, true);
            app.DropDown_27.FontSize = 10;
            app.DropDown_27.Layout.Row = 1;
            app.DropDown_27.Layout.Column = 3;
            app.DropDown_27.Value = 'Micro';

            % Create DropDown_28
            app.DropDown_28 = uidropdown(app.GridLayout2_8);
            app.DropDown_28.Items = {'Deg', 'Rad'};
            app.DropDown_28.ValueChangedFcn = createCallbackFcn(app, @DropDown_28ValueChanged, true);
            app.DropDown_28.FontSize = 10;
            app.DropDown_28.Layout.Row = 2;
            app.DropDown_28.Layout.Column = 3;
            app.DropDown_28.Value = 'Deg';

            % Create DropDown_29
            app.DropDown_29 = uidropdown(app.GridLayout2_8);
            app.DropDown_29.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_29.ValueChangedFcn = createCallbackFcn(app, @DropDown_29ValueChanged, true);
            app.DropDown_29.FontSize = 10;
            app.DropDown_29.Layout.Row = 3;
            app.DropDown_29.Layout.Column = 3;
            app.DropDown_29.Value = 'Micro';

            % Create DropDown_30
            app.DropDown_30 = uidropdown(app.GridLayout2_8);
            app.DropDown_30.Items = {'Deg', 'Rad'};
            app.DropDown_30.ValueChangedFcn = createCallbackFcn(app, @DropDown_30ValueChanged, true);
            app.DropDown_30.FontSize = 10;
            app.DropDown_30.Layout.Row = 4;
            app.DropDown_30.Layout.Column = 3;
            app.DropDown_30.Value = 'Deg';

            % Create HookesLawTab
            app.HookesLawTab = uitab(app.TabGroup);
            app.HookesLawTab.Title = 'Hooke''s Law';

            % Create GridLayout9
            app.GridLayout9 = uigridlayout(app.HookesLawTab);
            app.GridLayout9.ColumnWidth = {'1x', '1x', '1x', '1x'};
            app.GridLayout9.RowHeight = {'0.5x', '1x', '1x', '1x', '1x', '0.5x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};

            % Create StressesPanel
            app.StressesPanel = uipanel(app.GridLayout9);
            app.StressesPanel.AutoResizeChildren = 'off';
            app.StressesPanel.Title = 'Stresses';
            app.StressesPanel.Layout.Row = [2 6];
            app.StressesPanel.Layout.Column = [1 2];

            % Create GridLayout2_9
            app.GridLayout2_9 = uigridlayout(app.StressesPanel);
            app.GridLayout2_9.ColumnWidth = {'1x', '1x', '0.7x'};
            app.GridLayout2_9.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};

            % Create SigmaXEditField_2Label
            app.SigmaXEditField_2Label = uilabel(app.GridLayout2_9);
            app.SigmaXEditField_2Label.Layout.Row = 1;
            app.SigmaXEditField_2Label.Layout.Column = 1;
            app.SigmaXEditField_2Label.Text = 'Sigma X';

            % Create SigmaXEditField_2
            app.SigmaXEditField_2 = uieditfield(app.GridLayout2_9, 'numeric');
            app.SigmaXEditField_2.ValueDisplayFormat = '%11.6g';
            app.SigmaXEditField_2.ValueChangedFcn = createCallbackFcn(app, @SigmaXEditField_2ValueChanged, true);
            app.SigmaXEditField_2.HorizontalAlignment = 'left';
            app.SigmaXEditField_2.Layout.Row = 1;
            app.SigmaXEditField_2.Layout.Column = 2;

            % Create SigmaYEditField_2Label
            app.SigmaYEditField_2Label = uilabel(app.GridLayout2_9);
            app.SigmaYEditField_2Label.Layout.Row = 2;
            app.SigmaYEditField_2Label.Layout.Column = 1;
            app.SigmaYEditField_2Label.Text = 'Sigma Y';

            % Create SigmaYEditField_2
            app.SigmaYEditField_2 = uieditfield(app.GridLayout2_9, 'numeric');
            app.SigmaYEditField_2.ValueDisplayFormat = '%11.6g';
            app.SigmaYEditField_2.ValueChangedFcn = createCallbackFcn(app, @SigmaYEditField_2ValueChanged, true);
            app.SigmaYEditField_2.HorizontalAlignment = 'left';
            app.SigmaYEditField_2.Layout.Row = 2;
            app.SigmaYEditField_2.Layout.Column = 2;

            % Create TauXYEditField_2Label
            app.TauXYEditField_2Label = uilabel(app.GridLayout2_9);
            app.TauXYEditField_2Label.Layout.Row = 4;
            app.TauXYEditField_2Label.Layout.Column = 1;
            app.TauXYEditField_2Label.Text = 'Tau XY';

            % Create TauXYEditField_2
            app.TauXYEditField_2 = uieditfield(app.GridLayout2_9, 'numeric');
            app.TauXYEditField_2.ValueDisplayFormat = '%11.6g';
            app.TauXYEditField_2.ValueChangedFcn = createCallbackFcn(app, @TauXYEditField_2ValueChanged, true);
            app.TauXYEditField_2.HorizontalAlignment = 'left';
            app.TauXYEditField_2.Layout.Row = 4;
            app.TauXYEditField_2.Layout.Column = 2;

            % Create PoissonsratioLabel
            app.PoissonsratioLabel = uilabel(app.GridLayout2_9);
            app.PoissonsratioLabel.Layout.Row = 5;
            app.PoissonsratioLabel.Layout.Column = 1;
            app.PoissonsratioLabel.Text = 'Poisson''s Ratio';

            % Create PoissonsRatioEditField
            app.PoissonsRatioEditField = uieditfield(app.GridLayout2_9, 'numeric');
            app.PoissonsRatioEditField.ValueDisplayFormat = '%11.6g';
            app.PoissonsRatioEditField.ValueChangedFcn = createCallbackFcn(app, @PoissonsRatioEditFieldValueChanged, true);
            app.PoissonsRatioEditField.HorizontalAlignment = 'left';
            app.PoissonsRatioEditField.Layout.Row = 5;
            app.PoissonsRatioEditField.Layout.Column = 2;

            % Create DropDown_31
            app.DropDown_31 = uidropdown(app.GridLayout2_9);
            app.DropDown_31.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_31.ValueChangedFcn = createCallbackFcn(app, @DropDown_31ValueChanged, true);
            app.DropDown_31.FontSize = 10;
            app.DropDown_31.Layout.Row = 1;
            app.DropDown_31.Layout.Column = 3;
            app.DropDown_31.Value = 'Pa';

            % Create DropDown_32
            app.DropDown_32 = uidropdown(app.GridLayout2_9);
            app.DropDown_32.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_32.ValueChangedFcn = createCallbackFcn(app, @DropDown_32ValueChanged, true);
            app.DropDown_32.FontSize = 10;
            app.DropDown_32.Layout.Row = 2;
            app.DropDown_32.Layout.Column = 3;
            app.DropDown_32.Value = 'Pa';

            % Create DropDown_33
            app.DropDown_33 = uidropdown(app.GridLayout2_9);
            app.DropDown_33.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_33.ValueChangedFcn = createCallbackFcn(app, @DropDown_33ValueChanged, true);
            app.DropDown_33.FontSize = 10;
            app.DropDown_33.Layout.Row = 4;
            app.DropDown_33.Layout.Column = 3;
            app.DropDown_33.Value = 'Pa';

            % Create RotationAngleEditField_3Label_2
            app.RotationAngleEditField_3Label_2 = uilabel(app.GridLayout2_9);
            app.RotationAngleEditField_3Label_2.Layout.Row = 6;
            app.RotationAngleEditField_3Label_2.Layout.Column = 1;
            app.RotationAngleEditField_3Label_2.Text = 'Young''s modulus';

            % Create RotationAngleEditField_4
            app.RotationAngleEditField_4 = uieditfield(app.GridLayout2_9, 'numeric');
            app.RotationAngleEditField_4.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField_4.ValueChangedFcn = createCallbackFcn(app, @RotationAngleEditField_4ValueChanged, true);
            app.RotationAngleEditField_4.HorizontalAlignment = 'left';
            app.RotationAngleEditField_4.Layout.Row = 6;
            app.RotationAngleEditField_4.Layout.Column = 2;

            % Create DropDown_35
            app.DropDown_35 = uidropdown(app.GridLayout2_9);
            app.DropDown_35.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_35.ValueChangedFcn = createCallbackFcn(app, @DropDown_35ValueChanged, true);
            app.DropDown_35.FontSize = 10;
            app.DropDown_35.Layout.Row = 6;
            app.DropDown_35.Layout.Column = 3;
            app.DropDown_35.Value = 'Pa';

            % Create PlotStressesMohrsCircleButton_2
            app.PlotStressesMohrsCircleButton_2 = uibutton(app.GridLayout2_9, 'push');
            app.PlotStressesMohrsCircleButton_2.ButtonPushedFcn = createCallbackFcn(app, @PlotStressesMohrsCircleButton_2Pushed, true);
            app.PlotStressesMohrsCircleButton_2.VerticalAlignment = 'top';
            app.PlotStressesMohrsCircleButton_2.Enable = 'off';
            app.PlotStressesMohrsCircleButton_2.Layout.Row = 8;
            app.PlotStressesMohrsCircleButton_2.Layout.Column = [1 3];
            app.PlotStressesMohrsCircleButton_2.Text = 'Plot Stresses Mohr''s Circle';

            % Create DropDown_53
            app.DropDown_53 = uidropdown(app.GridLayout2_9);
            app.DropDown_53.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_53.ValueChangedFcn = createCallbackFcn(app, @DropDown_53ValueChanged, true);
            app.DropDown_53.FontSize = 10;
            app.DropDown_53.Layout.Row = 3;
            app.DropDown_53.Layout.Column = 3;
            app.DropDown_53.Value = 'Pa';

            % Create SigmaZEditFieldLabel
            app.SigmaZEditFieldLabel = uilabel(app.GridLayout2_9);
            app.SigmaZEditFieldLabel.Layout.Row = 3;
            app.SigmaZEditFieldLabel.Layout.Column = 1;
            app.SigmaZEditFieldLabel.Text = 'Sigma Z';

            % Create SigmaZEditField
            app.SigmaZEditField = uieditfield(app.GridLayout2_9, 'numeric');
            app.SigmaZEditField.ValueDisplayFormat = '%11.6g';
            app.SigmaZEditField.ValueChangedFcn = createCallbackFcn(app, @SigmaZEditFieldValueChanged, true);
            app.SigmaZEditField.HorizontalAlignment = 'left';
            app.SigmaZEditField.Layout.Row = 3;
            app.SigmaZEditField.Layout.Column = 2;

            % Create RotationAngleEditField_3Label_6
            app.RotationAngleEditField_3Label_6 = uilabel(app.GridLayout2_9);
            app.RotationAngleEditField_3Label_6.Layout.Row = 7;
            app.RotationAngleEditField_3Label_6.Layout.Column = 1;
            app.RotationAngleEditField_3Label_6.Text = 'Shear modulus';

            % Create RotationAngleEditField_8
            app.RotationAngleEditField_8 = uieditfield(app.GridLayout2_9, 'numeric');
            app.RotationAngleEditField_8.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField_8.ValueChangedFcn = createCallbackFcn(app, @RotationAngleEditField_8ValueChanged, true);
            app.RotationAngleEditField_8.HorizontalAlignment = 'left';
            app.RotationAngleEditField_8.Layout.Row = 7;
            app.RotationAngleEditField_8.Layout.Column = 2;

            % Create DropDown_55
            app.DropDown_55 = uidropdown(app.GridLayout2_9);
            app.DropDown_55.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_55.ValueChangedFcn = createCallbackFcn(app, @DropDown_55ValueChanged, true);
            app.DropDown_55.FontSize = 10;
            app.DropDown_55.Layout.Row = 7;
            app.DropDown_55.Layout.Column = 3;
            app.DropDown_55.Value = 'Pa';

            % Create StrainsPanel
            app.StrainsPanel = uipanel(app.GridLayout9);
            app.StrainsPanel.AutoResizeChildren = 'off';
            app.StrainsPanel.Title = 'Strains';
            app.StrainsPanel.Layout.Row = [2 6];
            app.StrainsPanel.Layout.Column = [3 4];

            % Create GridLayout2_10
            app.GridLayout2_10 = uigridlayout(app.StrainsPanel);
            app.GridLayout2_10.ColumnWidth = {'1x', '1x', '0.7x'};
            app.GridLayout2_10.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};

            % Create EpsilonXEditField_2Label
            app.EpsilonXEditField_2Label = uilabel(app.GridLayout2_10);
            app.EpsilonXEditField_2Label.Layout.Row = 1;
            app.EpsilonXEditField_2Label.Layout.Column = 1;
            app.EpsilonXEditField_2Label.Text = 'Epsilon X';

            % Create EpsilonXEditField_2
            app.EpsilonXEditField_2 = uieditfield(app.GridLayout2_10, 'numeric');
            app.EpsilonXEditField_2.ValueDisplayFormat = '%11.6g';
            app.EpsilonXEditField_2.ValueChangedFcn = createCallbackFcn(app, @EpsilonXEditField_2ValueChanged, true);
            app.EpsilonXEditField_2.Editable = 'off';
            app.EpsilonXEditField_2.HorizontalAlignment = 'left';
            app.EpsilonXEditField_2.Layout.Row = 1;
            app.EpsilonXEditField_2.Layout.Column = 2;

            % Create EpsilonYEditField_2Label
            app.EpsilonYEditField_2Label = uilabel(app.GridLayout2_10);
            app.EpsilonYEditField_2Label.Layout.Row = 2;
            app.EpsilonYEditField_2Label.Layout.Column = 1;
            app.EpsilonYEditField_2Label.Text = 'Epsilon Y';

            % Create EpsilonYEditField_2
            app.EpsilonYEditField_2 = uieditfield(app.GridLayout2_10, 'numeric');
            app.EpsilonYEditField_2.ValueDisplayFormat = '%11.6g';
            app.EpsilonYEditField_2.ValueChangedFcn = createCallbackFcn(app, @EpsilonYEditField_2ValueChanged, true);
            app.EpsilonYEditField_2.Editable = 'off';
            app.EpsilonYEditField_2.HorizontalAlignment = 'left';
            app.EpsilonYEditField_2.Layout.Row = 2;
            app.EpsilonYEditField_2.Layout.Column = 2;

            % Create GammaXYEditField_2Label
            app.GammaXYEditField_2Label = uilabel(app.GridLayout2_10);
            app.GammaXYEditField_2Label.Layout.Row = 4;
            app.GammaXYEditField_2Label.Layout.Column = 1;
            app.GammaXYEditField_2Label.Text = 'Gamma XY';

            % Create GammaXYEditField_2
            app.GammaXYEditField_2 = uieditfield(app.GridLayout2_10, 'numeric');
            app.GammaXYEditField_2.ValueDisplayFormat = '%11.6g';
            app.GammaXYEditField_2.ValueChangedFcn = createCallbackFcn(app, @GammaXYEditField_2ValueChanged, true);
            app.GammaXYEditField_2.Editable = 'off';
            app.GammaXYEditField_2.HorizontalAlignment = 'left';
            app.GammaXYEditField_2.Layout.Row = 4;
            app.GammaXYEditField_2.Layout.Column = 2;

            % Create PoissonsRatioEditField_2Label
            app.PoissonsRatioEditField_2Label = uilabel(app.GridLayout2_10);
            app.PoissonsRatioEditField_2Label.Layout.Row = 5;
            app.PoissonsRatioEditField_2Label.Layout.Column = 1;
            app.PoissonsRatioEditField_2Label.Text = 'Poisson''s Ratio';

            % Create PoissonsRatioEditField_2
            app.PoissonsRatioEditField_2 = uieditfield(app.GridLayout2_10, 'numeric');
            app.PoissonsRatioEditField_2.ValueDisplayFormat = '%11.6g';
            app.PoissonsRatioEditField_2.ValueChangedFcn = createCallbackFcn(app, @PoissonsRatioEditField_2ValueChanged, true);
            app.PoissonsRatioEditField_2.Editable = 'off';
            app.PoissonsRatioEditField_2.HorizontalAlignment = 'left';
            app.PoissonsRatioEditField_2.Layout.Row = 5;
            app.PoissonsRatioEditField_2.Layout.Column = 2;

            % Create PlotStrainsMohrsCircleButton
            app.PlotStrainsMohrsCircleButton = uibutton(app.GridLayout2_10, 'push');
            app.PlotStrainsMohrsCircleButton.ButtonPushedFcn = createCallbackFcn(app, @PlotStrainsMohrsCircleButtonPushed, true);
            app.PlotStrainsMohrsCircleButton.Layout.Row = 8;
            app.PlotStrainsMohrsCircleButton.Layout.Column = [1 3];
            app.PlotStrainsMohrsCircleButton.Text = 'Plot Strains Mohr''s Circle';

            % Create DropDown_40
            app.DropDown_40 = uidropdown(app.GridLayout2_10);
            app.DropDown_40.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_40.ValueChangedFcn = createCallbackFcn(app, @DropDown_40ValueChanged, true);
            app.DropDown_40.FontSize = 10;
            app.DropDown_40.Layout.Row = 1;
            app.DropDown_40.Layout.Column = 3;
            app.DropDown_40.Value = 'Micro';

            % Create DropDown_41
            app.DropDown_41 = uidropdown(app.GridLayout2_10);
            app.DropDown_41.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_41.ValueChangedFcn = createCallbackFcn(app, @DropDown_41ValueChanged, true);
            app.DropDown_41.FontSize = 10;
            app.DropDown_41.Layout.Row = 2;
            app.DropDown_41.Layout.Column = 3;
            app.DropDown_41.Value = 'Micro';

            % Create DropDown_42
            app.DropDown_42 = uidropdown(app.GridLayout2_10);
            app.DropDown_42.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_42.ValueChangedFcn = createCallbackFcn(app, @DropDown_42ValueChanged, true);
            app.DropDown_42.FontSize = 10;
            app.DropDown_42.Layout.Row = 4;
            app.DropDown_42.Layout.Column = 3;
            app.DropDown_42.Value = 'Micro';

            % Create DropDown_54
            app.DropDown_54 = uidropdown(app.GridLayout2_10);
            app.DropDown_54.Items = {'Micro', 'Millie', 'Unit', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_54.ValueChangedFcn = createCallbackFcn(app, @DropDown_54ValueChanged, true);
            app.DropDown_54.FontSize = 10;
            app.DropDown_54.Layout.Row = 3;
            app.DropDown_54.Layout.Column = 3;
            app.DropDown_54.Value = 'Micro';

            % Create EpsilonZEditFieldLabel
            app.EpsilonZEditFieldLabel = uilabel(app.GridLayout2_10);
            app.EpsilonZEditFieldLabel.Layout.Row = 3;
            app.EpsilonZEditFieldLabel.Layout.Column = 1;
            app.EpsilonZEditFieldLabel.Text = 'Epsilon Z';

            % Create EpsilonZEditField
            app.EpsilonZEditField = uieditfield(app.GridLayout2_10, 'numeric');
            app.EpsilonZEditField.ValueDisplayFormat = '%11.6g';
            app.EpsilonZEditField.ValueChangedFcn = createCallbackFcn(app, @EpsilonZEditFieldValueChanged, true);
            app.EpsilonZEditField.Editable = 'off';
            app.EpsilonZEditField.HorizontalAlignment = 'left';
            app.EpsilonZEditField.Layout.Row = 3;
            app.EpsilonZEditField.Layout.Column = 2;

            % Create RotationAngleEditField_3Label_3
            app.RotationAngleEditField_3Label_3 = uilabel(app.GridLayout2_10);
            app.RotationAngleEditField_3Label_3.Layout.Row = 6;
            app.RotationAngleEditField_3Label_3.Layout.Column = 1;
            app.RotationAngleEditField_3Label_3.Text = 'Young''s modulus';

            % Create RotationAngleEditField_5
            app.RotationAngleEditField_5 = uieditfield(app.GridLayout2_10, 'numeric');
            app.RotationAngleEditField_5.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField_5.ValueChangedFcn = createCallbackFcn(app, @RotationAngleEditField_5ValueChanged, true);
            app.RotationAngleEditField_5.Editable = 'off';
            app.RotationAngleEditField_5.HorizontalAlignment = 'left';
            app.RotationAngleEditField_5.Layout.Row = 6;
            app.RotationAngleEditField_5.Layout.Column = 2;

            % Create DropDown_39
            app.DropDown_39 = uidropdown(app.GridLayout2_10);
            app.DropDown_39.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_39.ValueChangedFcn = createCallbackFcn(app, @DropDown_39ValueChanged, true);
            app.DropDown_39.FontSize = 10;
            app.DropDown_39.Layout.Row = 6;
            app.DropDown_39.Layout.Column = 3;
            app.DropDown_39.Value = 'Pa';

            % Create RotationAngleEditField_3Label_7
            app.RotationAngleEditField_3Label_7 = uilabel(app.GridLayout2_10);
            app.RotationAngleEditField_3Label_7.Layout.Row = 7;
            app.RotationAngleEditField_3Label_7.Layout.Column = 1;
            app.RotationAngleEditField_3Label_7.Text = 'Shear modulus';

            % Create RotationAngleEditField_9
            app.RotationAngleEditField_9 = uieditfield(app.GridLayout2_10, 'numeric');
            app.RotationAngleEditField_9.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField_9.ValueChangedFcn = createCallbackFcn(app, @RotationAngleEditField_9ValueChanged, true);
            app.RotationAngleEditField_9.Editable = 'off';
            app.RotationAngleEditField_9.HorizontalAlignment = 'left';
            app.RotationAngleEditField_9.Layout.Row = 7;
            app.RotationAngleEditField_9.Layout.Column = 2;

            % Create DropDown_56
            app.DropDown_56 = uidropdown(app.GridLayout2_10);
            app.DropDown_56.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_56.ValueChangedFcn = createCallbackFcn(app, @DropDown_56ValueChanged, true);
            app.DropDown_56.FontSize = 10;
            app.DropDown_56.Layout.Row = 7;
            app.DropDown_56.Layout.Column = 3;
            app.DropDown_56.Value = 'Pa';

            % Create DimensionsChangesandStrainEnergyPanel
            app.DimensionsChangesandStrainEnergyPanel = uipanel(app.GridLayout9);
            app.DimensionsChangesandStrainEnergyPanel.AutoResizeChildren = 'off';
            app.DimensionsChangesandStrainEnergyPanel.Title = 'Dimensions Changes and Strain-Energy';
            app.DimensionsChangesandStrainEnergyPanel.Layout.Row = [7 13];
            app.DimensionsChangesandStrainEnergyPanel.Layout.Column = [1 2];

            % Create GridLayout2_11
            app.GridLayout2_11 = uigridlayout(app.DimensionsChangesandStrainEnergyPanel);
            app.GridLayout2_11.ColumnWidth = {'1x', '1x', '0.7x'};
            app.GridLayout2_11.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};

            % Create XEditFieldLabel
            app.XEditFieldLabel = uilabel(app.GridLayout2_11);
            app.XEditFieldLabel.Layout.Row = 1;
            app.XEditFieldLabel.Layout.Column = 1;
            app.XEditFieldLabel.Text = 'X';

            % Create XEditField
            app.XEditField = uieditfield(app.GridLayout2_11, 'numeric');
            app.XEditField.ValueDisplayFormat = '%11.6g';
            app.XEditField.HorizontalAlignment = 'left';
            app.XEditField.Layout.Row = 1;
            app.XEditField.Layout.Column = 2;

            % Create YEditFieldLabel
            app.YEditFieldLabel = uilabel(app.GridLayout2_11);
            app.YEditFieldLabel.Layout.Row = 3;
            app.YEditFieldLabel.Layout.Column = 1;
            app.YEditFieldLabel.Text = 'Y';

            % Create YEditField
            app.YEditField = uieditfield(app.GridLayout2_11, 'numeric');
            app.YEditField.ValueDisplayFormat = '%11.6g';
            app.YEditField.HorizontalAlignment = 'left';
            app.YEditField.Layout.Row = 3;
            app.YEditField.Layout.Column = 2;

            % Create ZEditFieldLabel
            app.ZEditFieldLabel = uilabel(app.GridLayout2_11);
            app.ZEditFieldLabel.Layout.Row = 5;
            app.ZEditFieldLabel.Layout.Column = 1;
            app.ZEditFieldLabel.Text = 'Z';

            % Create ZEditField
            app.ZEditField = uieditfield(app.GridLayout2_11, 'numeric');
            app.ZEditField.ValueDisplayFormat = '%11.6g';
            app.ZEditField.HorizontalAlignment = 'left';
            app.ZEditField.Layout.Row = 5;
            app.ZEditField.Layout.Column = 2;

            % Create PoissonsRatioLabel
            app.PoissonsRatioLabel = uilabel(app.GridLayout2_11);
            app.PoissonsRatioLabel.Layout.Row = 7;
            app.PoissonsRatioLabel.Layout.Column = 1;
            app.PoissonsRatioLabel.Text = 'Volume';

            % Create VolumeEditField
            app.VolumeEditField = uieditfield(app.GridLayout2_11, 'numeric');
            app.VolumeEditField.ValueDisplayFormat = '%11.6g';
            app.VolumeEditField.Editable = 'off';
            app.VolumeEditField.HorizontalAlignment = 'left';
            app.VolumeEditField.Layout.Row = 7;
            app.VolumeEditField.Layout.Column = 2;

            % Create RotationAngleEditField_3Label_4
            app.RotationAngleEditField_3Label_4 = uilabel(app.GridLayout2_11);
            app.RotationAngleEditField_3Label_4.Layout.Row = 8;
            app.RotationAngleEditField_3Label_4.Layout.Column = 1;
            app.RotationAngleEditField_3Label_4.Text = 'ΔVolume';

            % Create RotationAngleEditField_6
            app.RotationAngleEditField_6 = uieditfield(app.GridLayout2_11, 'numeric');
            app.RotationAngleEditField_6.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField_6.Editable = 'off';
            app.RotationAngleEditField_6.HorizontalAlignment = 'left';
            app.RotationAngleEditField_6.Layout.Row = 8;
            app.RotationAngleEditField_6.Layout.Column = 2;

            % Create RotationAngleEditField_3Label_5
            app.RotationAngleEditField_3Label_5 = uilabel(app.GridLayout2_11);
            app.RotationAngleEditField_3Label_5.FontSize = 10;
            app.RotationAngleEditField_3Label_5.Layout.Row = 10;
            app.RotationAngleEditField_3Label_5.Layout.Column = 1;
            app.RotationAngleEditField_3Label_5.Text = 'Strain Energy Density';

            % Create RotationAngleEditField_7
            app.RotationAngleEditField_7 = uieditfield(app.GridLayout2_11, 'numeric');
            app.RotationAngleEditField_7.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField_7.Editable = 'off';
            app.RotationAngleEditField_7.HorizontalAlignment = 'left';
            app.RotationAngleEditField_7.Layout.Row = 10;
            app.RotationAngleEditField_7.Layout.Column = 2;

            % Create DropDown_47
            app.DropDown_47 = uidropdown(app.GridLayout2_11);
            app.DropDown_47.Items = {'Pa'};
            app.DropDown_47.FontSize = 10;
            app.DropDown_47.Layout.Row = 10;
            app.DropDown_47.Layout.Column = 3;
            app.DropDown_47.Value = 'Pa';

            % Create DropDown_48
            app.DropDown_48 = uidropdown(app.GridLayout2_11);
            app.DropDown_48.Items = {'Micro', 'Millie', 'Centi', 'Meter', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_48.ValueChangedFcn = createCallbackFcn(app, @DropDown_48ValueChanged, true);
            app.DropDown_48.FontSize = 10;
            app.DropDown_48.Layout.Row = 1;
            app.DropDown_48.Layout.Column = 3;
            app.DropDown_48.Value = 'Micro';

            % Create DropDown_49
            app.DropDown_49 = uidropdown(app.GridLayout2_11);
            app.DropDown_49.Items = {'Micro', 'Millie', 'Centi', 'Meter', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_49.ValueChangedFcn = createCallbackFcn(app, @DropDown_49ValueChanged, true);
            app.DropDown_49.FontSize = 10;
            app.DropDown_49.Layout.Row = 3;
            app.DropDown_49.Layout.Column = 3;
            app.DropDown_49.Value = 'Micro';

            % Create DropDown_50
            app.DropDown_50 = uidropdown(app.GridLayout2_11);
            app.DropDown_50.Items = {'Micro', 'Millie', 'Centi', 'Meter', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_50.ValueChangedFcn = createCallbackFcn(app, @DropDown_50ValueChanged, true);
            app.DropDown_50.FontSize = 10;
            app.DropDown_50.Layout.Row = 5;
            app.DropDown_50.Layout.Column = 3;
            app.DropDown_50.Value = 'Micro';

            % Create DropDown_51
            app.DropDown_51 = uidropdown(app.GridLayout2_11);
            app.DropDown_51.Items = {'Micro³', 'Millie³', 'Centi³', 'Meter³', 'Kilo³', 'Mega³', 'Giga³'};
            app.DropDown_51.ValueChangedFcn = createCallbackFcn(app, @DropDown_51ValueChanged, true);
            app.DropDown_51.FontSize = 9.5;
            app.DropDown_51.Layout.Row = 7;
            app.DropDown_51.Layout.Column = 3;
            app.DropDown_51.Value = 'Micro³';

            % Create DropDown_52
            app.DropDown_52 = uidropdown(app.GridLayout2_11);
            app.DropDown_52.Items = {'Micro³', 'Millie³', 'Centi³', 'Meter³', 'Kilo³', 'Mega³', 'Giga³'};
            app.DropDown_52.ValueChangedFcn = createCallbackFcn(app, @DropDown_52ValueChanged, true);
            app.DropDown_52.FontSize = 10;
            app.DropDown_52.Layout.Row = 8;
            app.DropDown_52.Layout.Column = 3;
            app.DropDown_52.Value = 'Micro³';

            % Create RotationAngleEditField_3Label_10
            app.RotationAngleEditField_3Label_10 = uilabel(app.GridLayout2_11);
            app.RotationAngleEditField_3Label_10.Layout.Row = 9;
            app.RotationAngleEditField_3Label_10.Layout.Column = 1;
            app.RotationAngleEditField_3Label_10.Text = 'Dilatation';

            % Create RotationAngleEditField_12
            app.RotationAngleEditField_12 = uieditfield(app.GridLayout2_11, 'numeric');
            app.RotationAngleEditField_12.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField_12.Editable = 'off';
            app.RotationAngleEditField_12.HorizontalAlignment = 'left';
            app.RotationAngleEditField_12.Layout.Row = 9;
            app.RotationAngleEditField_12.Layout.Column = 2;

            % Create DropDown_63
            app.DropDown_63 = uidropdown(app.GridLayout2_11);
            app.DropDown_63.Items = {'Micro', 'Millie', 'Centi', 'Meter', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_63.ValueChangedFcn = createCallbackFcn(app, @DropDown_63ValueChanged, true);
            app.DropDown_63.FontSize = 10;
            app.DropDown_63.Layout.Row = 2;
            app.DropDown_63.Layout.Column = 3;
            app.DropDown_63.Value = 'Micro';

            % Create XLabel
            app.XLabel = uilabel(app.GridLayout2_11);
            app.XLabel.Layout.Row = 2;
            app.XLabel.Layout.Column = 1;
            app.XLabel.Text = 'ΔX';

            % Create XEditField_2
            app.XEditField_2 = uieditfield(app.GridLayout2_11, 'numeric');
            app.XEditField_2.ValueDisplayFormat = '%11.6g';
            app.XEditField_2.Editable = 'off';
            app.XEditField_2.HorizontalAlignment = 'left';
            app.XEditField_2.Layout.Row = 2;
            app.XEditField_2.Layout.Column = 2;

            % Create DropDown_64
            app.DropDown_64 = uidropdown(app.GridLayout2_11);
            app.DropDown_64.Items = {'Micro', 'Millie', 'Centi', 'Meter', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_64.ValueChangedFcn = createCallbackFcn(app, @DropDown_64ValueChanged, true);
            app.DropDown_64.FontSize = 10;
            app.DropDown_64.Layout.Row = 4;
            app.DropDown_64.Layout.Column = 3;
            app.DropDown_64.Value = 'Micro';

            % Create YLabel
            app.YLabel = uilabel(app.GridLayout2_11);
            app.YLabel.Layout.Row = 4;
            app.YLabel.Layout.Column = 1;
            app.YLabel.Text = 'ΔY';

            % Create YEditField_2
            app.YEditField_2 = uieditfield(app.GridLayout2_11, 'numeric');
            app.YEditField_2.ValueDisplayFormat = '%11.6g';
            app.YEditField_2.Editable = 'off';
            app.YEditField_2.HorizontalAlignment = 'left';
            app.YEditField_2.Layout.Row = 4;
            app.YEditField_2.Layout.Column = 2;

            % Create DropDown_65
            app.DropDown_65 = uidropdown(app.GridLayout2_11);
            app.DropDown_65.Items = {'Micro', 'Millie', 'Centi', 'Meter', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_65.ValueChangedFcn = createCallbackFcn(app, @DropDown_65ValueChanged, true);
            app.DropDown_65.FontSize = 10;
            app.DropDown_65.Layout.Row = 6;
            app.DropDown_65.Layout.Column = 3;
            app.DropDown_65.Value = 'Micro';

            % Create ZLabel
            app.ZLabel = uilabel(app.GridLayout2_11);
            app.ZLabel.Layout.Row = 6;
            app.ZLabel.Layout.Column = 1;
            app.ZLabel.Text = 'ΔZ';

            % Create ZEditField_2
            app.ZEditField_2 = uieditfield(app.GridLayout2_11, 'numeric');
            app.ZEditField_2.ValueDisplayFormat = '%11.6g';
            app.ZEditField_2.Editable = 'off';
            app.ZEditField_2.HorizontalAlignment = 'left';
            app.ZEditField_2.Layout.Row = 6;
            app.ZEditField_2.Layout.Column = 2;

            % Create DropDown_77
            app.DropDown_77 = uidropdown(app.GridLayout2_11);
            app.DropDown_77.Items = {'Micro', 'Millie', 'Centi', 'Meter', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_77.ValueChangedFcn = createCallbackFcn(app, @DropDown_77ValueChanged, true);
            app.DropDown_77.FontSize = 10;
            app.DropDown_77.Layout.Row = 9;
            app.DropDown_77.Layout.Column = 3;
            app.DropDown_77.Value = 'Micro';

            % Create RotationAngleEditField_3Label_14
            app.RotationAngleEditField_3Label_14 = uilabel(app.GridLayout2_11);
            app.RotationAngleEditField_3Label_14.Layout.Row = 11;
            app.RotationAngleEditField_3Label_14.Layout.Column = 1;
            app.RotationAngleEditField_3Label_14.Text = 'Strain Energy';

            % Create RotationAngleEditField_16
            app.RotationAngleEditField_16 = uieditfield(app.GridLayout2_11, 'numeric');
            app.RotationAngleEditField_16.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField_16.Editable = 'off';
            app.RotationAngleEditField_16.HorizontalAlignment = 'left';
            app.RotationAngleEditField_16.Layout.Row = 11;
            app.RotationAngleEditField_16.Layout.Column = 2;

            % Create DropDown_78
            app.DropDown_78 = uidropdown(app.GridLayout2_11);
            app.DropDown_78.Items = {'J'};
            app.DropDown_78.FontSize = 10;
            app.DropDown_78.Layout.Row = 11;
            app.DropDown_78.Layout.Column = 3;
            app.DropDown_78.Value = 'J';

            % Create CalcDimensionsChangesandStrainEnergyDensityButton
            app.CalcDimensionsChangesandStrainEnergyDensityButton = uibutton(app.GridLayout2_11, 'push');
            app.CalcDimensionsChangesandStrainEnergyDensityButton.ButtonPushedFcn = createCallbackFcn(app, @CalcDimensionsChangesandStrainEnergyDensityButtonPushed, true);
            app.CalcDimensionsChangesandStrainEnergyDensityButton.FontSize = 11.5;
            app.CalcDimensionsChangesandStrainEnergyDensityButton.Layout.Row = 12;
            app.CalcDimensionsChangesandStrainEnergyDensityButton.Layout.Column = [1 3];
            app.CalcDimensionsChangesandStrainEnergyDensityButton.Text = 'Calc Dimensions Changes and Strain-Energy Density ';

            % Create ActiveStrainsSwitch
            app.ActiveStrainsSwitch = uiswitch(app.GridLayout9, 'slider');
            app.ActiveStrainsSwitch.Items = {'Stresses', 'Strains'};
            app.ActiveStrainsSwitch.ValueChangedFcn = createCallbackFcn(app, @ActiveStrainsSwitchValueChanged, true);
            app.ActiveStrainsSwitch.Layout.Row = 1;
            app.ActiveStrainsSwitch.Layout.Column = [2 3];
            app.ActiveStrainsSwitch.Value = 'Stresses';

            % Create YoungsandShearModulusPanel
            app.YoungsandShearModulusPanel = uipanel(app.GridLayout9);
            app.YoungsandShearModulusPanel.AutoResizeChildren = 'off';
            app.YoungsandShearModulusPanel.Title = 'Young''s and Shear Modulus';
            app.YoungsandShearModulusPanel.Layout.Row = [7 11];
            app.YoungsandShearModulusPanel.Layout.Column = [3 4];

            % Create GridLayout2_12
            app.GridLayout2_12 = uigridlayout(app.YoungsandShearModulusPanel);
            app.GridLayout2_12.ColumnWidth = {'1x', '1x', '0.7x'};
            app.GridLayout2_12.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};

            % Create SigmaXEditField_3Label
            app.SigmaXEditField_3Label = uilabel(app.GridLayout2_12);
            app.SigmaXEditField_3Label.Layout.Row = 1;
            app.SigmaXEditField_3Label.Layout.Column = 1;
            app.SigmaXEditField_3Label.Text = 'Sigma X';

            % Create SigmaXEditField_3
            app.SigmaXEditField_3 = uieditfield(app.GridLayout2_12, 'numeric');
            app.SigmaXEditField_3.ValueDisplayFormat = '%11.6g';
            app.SigmaXEditField_3.ValueChangedFcn = createCallbackFcn(app, @SigmaXEditField_3ValueChanged, true);
            app.SigmaXEditField_3.HorizontalAlignment = 'left';
            app.SigmaXEditField_3.Layout.Row = 1;
            app.SigmaXEditField_3.Layout.Column = 2;

            % Create SigmaYEditField_3Label
            app.SigmaYEditField_3Label = uilabel(app.GridLayout2_12);
            app.SigmaYEditField_3Label.Layout.Row = 3;
            app.SigmaYEditField_3Label.Layout.Column = 1;
            app.SigmaYEditField_3Label.Text = 'Sigma Y';

            % Create SigmaYEditField_3
            app.SigmaYEditField_3 = uieditfield(app.GridLayout2_12, 'numeric');
            app.SigmaYEditField_3.ValueDisplayFormat = '%11.6g';
            app.SigmaYEditField_3.ValueChangedFcn = createCallbackFcn(app, @SigmaYEditField_3ValueChanged, true);
            app.SigmaYEditField_3.HorizontalAlignment = 'left';
            app.SigmaYEditField_3.Layout.Row = 3;
            app.SigmaYEditField_3.Layout.Column = 2;

            % Create UseinStressesandStrainsButton
            app.UseinStressesandStrainsButton = uibutton(app.GridLayout2_12, 'push');
            app.UseinStressesandStrainsButton.ButtonPushedFcn = createCallbackFcn(app, @UseinStressesandStrainsButtonPushed, true);
            app.UseinStressesandStrainsButton.Layout.Row = 8;
            app.UseinStressesandStrainsButton.Layout.Column = [1 3];
            app.UseinStressesandStrainsButton.Text = 'Use in Stresses and Strains';

            % Create DropDown_67
            app.DropDown_67 = uidropdown(app.GridLayout2_12);
            app.DropDown_67.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_67.ValueChangedFcn = createCallbackFcn(app, @DropDown_67ValueChanged, true);
            app.DropDown_67.FontSize = 10;
            app.DropDown_67.Layout.Row = 1;
            app.DropDown_67.Layout.Column = 3;
            app.DropDown_67.Value = 'Pa';

            % Create DropDown_68
            app.DropDown_68 = uidropdown(app.GridLayout2_12);
            app.DropDown_68.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_68.ValueChangedFcn = createCallbackFcn(app, @DropDown_68ValueChanged, true);
            app.DropDown_68.FontSize = 10;
            app.DropDown_68.Layout.Row = 3;
            app.DropDown_68.Layout.Column = 3;
            app.DropDown_68.Value = 'Pa';

            % Create DropDown_72
            app.DropDown_72 = uidropdown(app.GridLayout2_12);
            app.DropDown_72.Items = {'Micro', 'Millie', 'Centi', 'Meter', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_72.ValueChangedFcn = createCallbackFcn(app, @DropDown_72ValueChanged, true);
            app.DropDown_72.FontSize = 10;
            app.DropDown_72.Layout.Row = 2;
            app.DropDown_72.Layout.Column = 3;
            app.DropDown_72.Value = 'Micro';

            % Create EpsilonXEditField_3Label
            app.EpsilonXEditField_3Label = uilabel(app.GridLayout2_12);
            app.EpsilonXEditField_3Label.Layout.Row = 2;
            app.EpsilonXEditField_3Label.Layout.Column = 1;
            app.EpsilonXEditField_3Label.Text = 'Epsilon X';

            % Create EpsilonXEditField_3
            app.EpsilonXEditField_3 = uieditfield(app.GridLayout2_12, 'numeric');
            app.EpsilonXEditField_3.ValueDisplayFormat = '%11.6g';
            app.EpsilonXEditField_3.ValueChangedFcn = createCallbackFcn(app, @EpsilonXEditField_3ValueChanged, true);
            app.EpsilonXEditField_3.HorizontalAlignment = 'left';
            app.EpsilonXEditField_3.Layout.Row = 2;
            app.EpsilonXEditField_3.Layout.Column = 2;

            % Create DropDown_73
            app.DropDown_73 = uidropdown(app.GridLayout2_12);
            app.DropDown_73.Items = {'Micro', 'Millie', 'Centi', 'Meter', 'Kilo', 'Mega', 'Giga'};
            app.DropDown_73.ValueChangedFcn = createCallbackFcn(app, @DropDown_73ValueChanged, true);
            app.DropDown_73.FontSize = 10;
            app.DropDown_73.Layout.Row = 4;
            app.DropDown_73.Layout.Column = 3;
            app.DropDown_73.Value = 'Micro';

            % Create EpsilonYEditField_3Label
            app.EpsilonYEditField_3Label = uilabel(app.GridLayout2_12);
            app.EpsilonYEditField_3Label.Layout.Row = 4;
            app.EpsilonYEditField_3Label.Layout.Column = 1;
            app.EpsilonYEditField_3Label.Text = 'Epsilon Y';

            % Create EpsilonYEditField_3
            app.EpsilonYEditField_3 = uieditfield(app.GridLayout2_12, 'numeric');
            app.EpsilonYEditField_3.ValueDisplayFormat = '%11.6g';
            app.EpsilonYEditField_3.ValueChangedFcn = createCallbackFcn(app, @EpsilonYEditField_3ValueChanged, true);
            app.EpsilonYEditField_3.HorizontalAlignment = 'left';
            app.EpsilonYEditField_3.Layout.Row = 4;
            app.EpsilonYEditField_3.Layout.Column = 2;

            % Create RotationAngleEditField_3Label_12
            app.RotationAngleEditField_3Label_12 = uilabel(app.GridLayout2_12);
            app.RotationAngleEditField_3Label_12.Layout.Row = 5;
            app.RotationAngleEditField_3Label_12.Layout.Column = 1;
            app.RotationAngleEditField_3Label_12.Text = 'Young''s modulus';

            % Create RotationAngleEditField_14
            app.RotationAngleEditField_14 = uieditfield(app.GridLayout2_12, 'numeric');
            app.RotationAngleEditField_14.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField_14.Editable = 'off';
            app.RotationAngleEditField_14.HorizontalAlignment = 'left';
            app.RotationAngleEditField_14.Layout.Row = 5;
            app.RotationAngleEditField_14.Layout.Column = 2;

            % Create DropDown_75
            app.DropDown_75 = uidropdown(app.GridLayout2_12);
            app.DropDown_75.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_75.ValueChangedFcn = createCallbackFcn(app, @DropDown_75ValueChanged, true);
            app.DropDown_75.FontSize = 10;
            app.DropDown_75.Layout.Row = 5;
            app.DropDown_75.Layout.Column = 3;
            app.DropDown_75.Value = 'Pa';

            % Create RotationAngleEditField_3Label_13
            app.RotationAngleEditField_3Label_13 = uilabel(app.GridLayout2_12);
            app.RotationAngleEditField_3Label_13.Layout.Row = 6;
            app.RotationAngleEditField_3Label_13.Layout.Column = 1;
            app.RotationAngleEditField_3Label_13.Text = 'Shear modulus';

            % Create RotationAngleEditField_15
            app.RotationAngleEditField_15 = uieditfield(app.GridLayout2_12, 'numeric');
            app.RotationAngleEditField_15.ValueDisplayFormat = '%11.6g';
            app.RotationAngleEditField_15.Editable = 'off';
            app.RotationAngleEditField_15.HorizontalAlignment = 'left';
            app.RotationAngleEditField_15.Layout.Row = 6;
            app.RotationAngleEditField_15.Layout.Column = 2;

            % Create DropDown_76
            app.DropDown_76 = uidropdown(app.GridLayout2_12);
            app.DropDown_76.Items = {'Pa', 'KPa', 'MPa', 'GPa', 'Psi', 'Ksi', 'lbf/(ft)^2'};
            app.DropDown_76.ValueChangedFcn = createCallbackFcn(app, @DropDown_76ValueChanged, true);
            app.DropDown_76.FontSize = 10;
            app.DropDown_76.Layout.Row = 6;
            app.DropDown_76.Layout.Column = 3;
            app.DropDown_76.Value = 'Pa';

            % Create PoissonsRatioEditField_3Label
            app.PoissonsRatioEditField_3Label = uilabel(app.GridLayout2_12);
            app.PoissonsRatioEditField_3Label.Layout.Row = 7;
            app.PoissonsRatioEditField_3Label.Layout.Column = 1;
            app.PoissonsRatioEditField_3Label.Text = 'Poisson''s Ratio';

            % Create PoissonsRatioEditField_3
            app.PoissonsRatioEditField_3 = uieditfield(app.GridLayout2_12, 'numeric');
            app.PoissonsRatioEditField_3.ValueDisplayFormat = '%11.6g';
            app.PoissonsRatioEditField_3.Editable = 'off';
            app.PoissonsRatioEditField_3.HorizontalAlignment = 'left';
            app.PoissonsRatioEditField_3.Layout.Row = 7;
            app.PoissonsRatioEditField_3.Layout.Column = 2;

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