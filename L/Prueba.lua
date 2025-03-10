
local Inventario = {} -- tabla vacia

function agregarObjeto(objeto) -- Definir la función.
    table.insert( Inventario, objeto ) -- Agregar un objeto a la tabla.
    print( objeto..  "ha sido agregado al inventario.") -- confirmación
end

function mostrarInventario()
    print("Inventario actual:")
    for i, objeto in ipairs(Inventario) do
        print(i .. "." .. objeto)
    end
    
end


function eliminarObjeto(Indice)
    if Inventario[Indice] then
        local objeto = Inventario[Indice]
        table.remove(Inventario, Indice)
        print( objeto .. "Ha sido eliminado del inventario.")
    else
        print("No se ha poddio eliminar el objeto.")
    end
end


--Llamadas a las funciónes
agregarObjeto("Espada")
agregarObjeto("Poción")
agregarObjeto("Escudo")
mostrarInventario()

print("¿Desea eliminar un objeto?")
local respuesta = io.read()

if respuesta == "si" then
    print("Ingrese el Indice del objeto a eliminar:")
    local Indice =tonumber(io.read())-- lee el indice como numero.
    eliminarObjeto(Indice)
else
    print("No se pudo eliminar el objeto")
end