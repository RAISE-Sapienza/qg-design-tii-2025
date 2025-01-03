within AES.ControlBlocks.SignalRouting;

model switch_2in1out
  parameter Real unselected_output_value = 0;
  Modelica.Blocks.Interfaces.IntegerInput sel annotation(
    Placement(visible = true, transformation(origin = {10, 38}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {0, 100}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput u1 annotation(
    Placement(visible = true, transformation(origin = {-178, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 58}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u2 annotation(
    Placement(visible = true, transformation(origin = {-168, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, -62}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {-140, 6}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  if sel==1 then
     y = u1;
  elseif sel==2 then
     y = u2;
  else
     y = unselected_output_value;
  end if;
  annotation(
    Icon(graphics = {Line(origin = {-19, 20}, points = {{99, -20}, {-33, 22}}, thickness = 5), Ellipse(origin = {80, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{-20, 20}, {20, -20}}), Ellipse(origin = {-80, 60}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{-20, 20}, {20, -20}}), Ellipse(origin = {-80, -60}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{-20, 20}, {20, -20}}), Text(origin = {-80, 57}, textColor = {255, 170, 0}, extent = {{-20, 19}, {20, -19}}, textString = "1", textStyle = {TextStyle.Bold}), Text(origin = {-80, -62}, textColor = {255, 170, 0}, extent = {{-20, 18}, {20, -18}}, textString = "2", textStyle = {TextStyle.Bold})}));
end switch_2in1out;