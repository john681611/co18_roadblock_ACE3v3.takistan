/**
 * Revendre l'objet s�lectionn� (R3F_LOG_objet_selectionne) � une usine
 * 
 * @param 0 l'usine
 * 
 * Copyright (C) 2014 Team ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

if (R3F_LOG_mutex_local_verrou) then
{
	hintC STR_R3F_LOG_mutex_action_en_cours;
}
else
{
	R3F_LOG_mutex_local_verrou = true;
	
	private ["_objet", "_usine", "_distance_usine"];
	
	_objet = _this select 0;
	
	deleteVehicle _objet;
};