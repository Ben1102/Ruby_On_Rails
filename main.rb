#Encoding: utf-8

require_relative 'lib/kaffee_maschine'
require_relative 'lib/maschine'

class Main
	obj = Kaffee_maschine.new(4)
	puts "\n\n"
	puts <<KM
Willkommen bei der Leckeren Kaffeemaschine

_______________$$$$
_________$$___$$$$___$$$
________$$$$__$$____$$$$$_______$$$
_______$$__$$_$$____$$____$$$$_$$$$$
__$$$__$$__$$_$$$$__$$$$_$$$$__$$
_$$$$$_$$__$$_$$$___$$$__$$____$$$$
$$$$$__$$__$$_$$____$$___$$$$__$$$
$$$____$$$_$$_$$____$$___$$$___$$
$$$$____$$$$$_$$____$$___$$____$$$$$$
$$$$_____$$$___$____$$___$$$____$$$$
_$$$$$_______________$____$$$$$
__$$$$$$$_____$$
____$$$$$ ____ 00
____________000088
__________00008888$$
_000888___008888$$$$
00____888_000000$$$$_____$$$$$$
00______000000$$$$$$____00$$$$$$
00________0000$$$$$$___8888
00________0000$$$$$$_$$$88_____…..((
_888______000088$$$$$$888 _______((…))
___$$$$$$_0000088$$$$$$ ______………((
_______000000088$$$$888_____000008888$$$
______00008888$$$$$$8888____000888$$$$$$=888
_____000008888$$$$8888$$$___000888$$$88$==88
____0000008888$$$$8888$$$$__0000088$$$88=888
____0000008888$$$$8888$$$$__$$$$00008888
_____000000088$$$$888888$$__$$$$00008888
______000000008$$$$888$$$____0000888$$$
________888888888$$$$88_______88000088
KM
obj.to_s
puts "Bitte wählen sie per eingabe was Sie tun wollen"
puts "Geben Sie einschalten, kochen, befüllen, inspizieren oder ausschalten ein:"
temp23 = gets.chomp
case temp23
	when "einschalten"
		obj.einschalten
		obj.zustand = "Eingeschaltet"
		puts "Wollen Sie kochen j fuer ja n fuer nein"
		temp24 = gets.chomp
		case temp24
			when "j"
				puts "Wie viele Kaffe wollen Sie kochen Bitte geben Sie anzahl an:"
				t2 = gets
				obj.koche_kaffee(t2.to_i)
			when "n"
				exit
		end # end of case temp24
	when "kochen"
		puts	"Wie viele Kaffe wollen Sie kochen Bitte geben Sie anzahl an:"
		t = gets
		obj.koche_kaffee(t.to_i)
		obj.kochen
	when "befüllen"
		puts	"Bitte geben Sie die anzufüllenden Liter wasser an"
		t1 = gets
		obj.befuellen(t1)
	when "ausschalten"
		obj.ausschalten
		obj.zustand = "Ausgeschaltet"
	when "inspizieren"
		obj.to_s
end # end of case		

end
