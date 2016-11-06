MercuryRadius = 2.4397E6;

return {
    -- Volume module
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
    }
}
