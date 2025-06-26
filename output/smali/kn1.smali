.class public final synthetic Lkn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lfn1;


# direct methods
.method public constructor <init>(Lfn1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkn1;->a:Lfn1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 3

    iget-object p1, p0, Lkn1;->a:Lfn1;

    .line 1
    iget-object v0, p1, Lfn1;->c:Lmp1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->C()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lmp1;->a(Lcom/google/android/gms/internal/ads/zzvt;Lsk2;Lwk2;)Lxw0;

    move-result-object v0

    .line 3
    new-instance v1, Lus0;

    invoke-direct {v1, v0}, Lus0;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1, v0}, Lfn1;->a(Lxw0;)V

    .line 5
    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object p1

    new-instance v2, Ljn1;

    invoke-direct {v2, v1}, Ljn1;-><init>(Lus0;)V

    .line 6
    check-cast p1, Lww0;

    .line 7
    iput-object v2, p1, Lww0;->l:Liy0;

    .line 8
    sget-object p1, Ly40;->S1:Lo40;

    .line 9
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 10
    invoke-virtual {v2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lxw0;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
