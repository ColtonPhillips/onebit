ShrinkageX = 0.66;
ShrinkageY = 1;

SeasonalRadius = 14;
SeasonProgress = cos(Universe.GetSeasonTime() * 2 * pi) * SeasonalRadius;
Log(SeasonProgress);
Log(Universe.GetSeasonTime());
x = originX + ShrinkageX * cos(Universe.PresentTime * 2 * pi)*Radius;
y = SeasonProgress + originY - ShrinkageY * sin(Universe.PresentTime * 2 * pi)*Radius;