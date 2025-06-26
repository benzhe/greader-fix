.class public final synthetic Lwm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lsm1;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsm1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwm1;->a:Lsm1;

    iput-object p2, p0, Lwm1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 14

    iget-object p1, p0, Lwm1;->a:Lsm1;

    iget-object v0, p0, Lwm1;->b:Ljava/lang/String;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkw()Lfx0;

    iget-object v1, p1, Lsm1;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Ljy0;->a()Ljy0;

    move-result-object v2

    iget-object v6, p1, Lsm1;->c:Ld23;

    iget-object v8, p1, Lsm1;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v10, p1, Lsm1;->e:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v11, p1, Lsm1;->f:Lep3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "native-omid"

    .line 4
    invoke-static/range {v1 .. v13}, Lfx0;->a(Landroid/content/Context;Ljy0;Ljava/lang/String;ZZLd23;Lb60;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lep3;Lsk2;Lwk2;)Lxw0;

    move-result-object p1

    .line 5
    new-instance v1, Lus0;

    invoke-direct {v1, p1}, Lus0;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1}, Lxw0;->I()Lhy0;

    move-result-object v2

    new-instance v3, Lan1;

    invoke-direct {v3, v1}, Lan1;-><init>(Lus0;)V

    .line 7
    check-cast v2, Lww0;

    .line 8
    iput-object v3, v2, Lww0;->k:Lgy0;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    .line 9
    invoke-interface {p1, v0, v2, v3}, Lxw0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
