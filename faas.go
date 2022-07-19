package faas

import (
	"net/http"

	"github.com/icoretchi/ecomm-system/handlers/rest"
)

func Translate(w http.ResponseWriter, r *http.Request) {
	rest.TranslateHandler(w, r)
}
