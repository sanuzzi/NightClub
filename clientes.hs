
data Cliente = Cliente {
  nombre :: Nombre,
  resistencia :: Resistencia,
  amigos :: [Cliente]
} deriving (Show)

type Nombre = String
type Resistencia = Double

rodri = Cliente "Rodrigo" 150 []
marcos = Cliente "Marcos" 40 [rodri]
