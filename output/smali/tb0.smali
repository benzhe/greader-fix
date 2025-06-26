.class public final Ltb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzv;


# instance fields
.field public a:Z

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ler3;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ler3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltb0;->b:Ljava/util/Map;

    iput-object p2, p0, Ltb0;->c:Ljava/util/Map;

    iput-object p3, p0, Ltb0;->d:Ler3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ltb0;->a:Z

    return-void
.end method


# virtual methods
.method public final zzaf(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ltb0;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ltb0;->a:Z

    .line 3
    iget-object v0, p0, Ltb0;->b:Ljava/util/Map;

    iget-object v1, p0, Ltb0;->c:Ljava/util/Map;

    const-string v2, "event_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Ltb0;->d:Ler3;

    check-cast p1, Lod0;

    iget-object v0, p0, Ltb0;->b:Ljava/util/Map;

    const-string v1, "openIntentAsync"

    invoke-interface {p1, v1, v0}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzb(Ly50;)V
    .locals 0

    return-void
.end method
