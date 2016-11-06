MercuryRadius = 2.4397E6;

return {
    -- Mercury barycenter module
    {
        Name = "MercuryBarycenter",
        Parent = "SolarSystemBarycenter",
        Transform = {
            Translation = {
                Type = "SpiceTranslation",
                Body = "MERCURY BARYCENTER",
                Observer = "SUN",
                Kernels = "${OPENSPACE_DATA}/spice/de430_1850-2150.bsp"
            },
        }
    },
    -- Mercury module
    {   
        Name = "Mercury",
        Parent = "MercuryBarycenter",
        Renderable = {
            Type = "RenderablePlanet",
            Frame = "IAU_MERCURY",
            Body = "MERCURY",
            Geometry = {
                Type = "SimpleSphere",
                Radius = { 2.440, 6 },
                Segments = 100
            },
            Textures = {
                Type = "simple",
                Color = "textures/mercury.jpg",
            },
            Atmosphere = {
                Type = "Nishita", -- for example, values missing etc etc
                MieFactor = 1.0,
                MieColor = {1.0, 1.0, 1.0}
            }
        },
        Transform = {
            Rotation = {
                Type = "SpiceRotation",
                SourceFrame = "IAU_MERCURY",
                DestinationFrame = "ECLIPJ2000",
            },
            Scale = {
                Type = "StaticScale",
                Scale = 1,
            },
        }
    },
    {   
        Name = "MercuryMagnetosphere",
        Parent = "MercuryBarycenter",
        SceneRadius = 0.8E+5,
        Renderable = {
            Type = "RenderableKameleonVolume",
            Source = "3d__ful_1.out.cdf",
            Variable = "rho",
            TransferFunction = "transferfunction.txt",
            StepSize = "0.01",
            Dimensions = {64, 64, 64},
            DomainScale = {MercuryRadius, MercuryRadius, MercuryRadius}, -- x, y, z are all specified in mercury radii 
            LowerValueBound = 0,
            UpperValueBound = 50.0
        },
        Transform = {
            Translation = {
                Type = "SpiceTranslation",
                Body = "MERCURY",
                --Reference = "ECLIPJ2000",
                Observer = "MERCURY BARYCENTER",
                Kernels = {
                    "${OPENSPACE_DATA}/spice/de430_1850-2150.bsp"
                }
            },
            Rotation = {
                Type = "SpiceRotation",
                SourceFrame = "MERCURYSE",
                DestinationFrame = "GALACTIC",
                Kernels = {
                    "${OPENSPACE_DATA}/spice/iSWAKernels/openspace_mercury.ti"
                }
            },
            Scale = {
                Type = "StaticScale",
                Scale = 1,
            },
        },
        GuiName = "/Volumes/TestKameleonVolume"
    },
    -- MercuryTrail module
    {   
        Name = "MercuryTrail",
        Parent = "SolarSystemBarycenter",
        Renderable = {
            Type = "RenderableTrail",
            Body = "MERCURY",
            Frame = "GALACTIC",
            Observer = "SUN",
            RGB = {0.6, 0.5, 0.5 },
            TropicalOrbitPeriod = 87.968 ,
            EarthOrbitRatio = 0.241,
            DayLength = 4222.6,
            Textures = {
                Type = "simple",
                Color = "${COMMON_MODULE}/textures/glare_blue.png",
                -- need to add different texture
            },  
        }
    }
}
