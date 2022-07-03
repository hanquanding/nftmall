package handler

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"
	"go-mall/apps/user/admin/internal/logic"
	"go-mall/apps/user/admin/internal/svc"
	"go-mall/apps/user/admin/internal/types"
)

func AdminHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.Request
		if err := httpx.Parse(r, &req); err != nil {
			httpx.Error(w, err)
			return
		}

		l := logic.NewAdminLogic(r.Context(), svcCtx)
		resp, err := l.Admin(&req)
		if err != nil {
			httpx.Error(w, err)
		} else {
			httpx.OkJson(w, resp)
		}
	}
}
