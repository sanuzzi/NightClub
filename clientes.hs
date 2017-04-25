
data Cliente = Cliente {
  nombre :: Nombre,
  resistencia :: Resistencia,
  amigos :: [Cliente]
} deriving (Show)

type Nombre = String
type Resistencia = Double

rodri = Cliente "Rodrigo" 150 []
marcos = Cliente "Marcos" 40 [rodri]

bajarResistencia cuánto cliente =
  nuevaResistencia (resistencia cliente - cuánto) cliente

aumentarResistencia cuánto =
  bajarResistencia (cuánto * (-1))

afectarAmigos criterio cliente =
  cliente {
    amigos = (map criterio . amigos) cliente
  }

jarraLoca =
  bajarResistencia 10 .
  afectarAmigos (bajarResistencia 10)

nuevaResistencia unaResistencia cliente =
  cliente {
    resistencia = unaResistencia
  }

grogXD = nuevaResistencia 0

klusener nombre =
  bajarResistencia ((fromIntegral . length) nombre)

rescatarse tiempo
  | tiempo > 3 = aumentarResistencia 200
  | otherwise = aumentarResistencia 100









--
