import java.util.Calendar;

String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

void mousePressed()
{
    saveFrame("output/" + timestamp() + "output.png");
    endRecord();
    exit();
}
