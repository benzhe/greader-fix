.class public final Lpj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lem3;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lkj1;


# direct methods
.method public constructor <init>(Lkj1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpj1;->f:Lkj1;

    iput-object p2, p0, Lpj1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c0(Lfm3;)V
    .locals 4

    .line 1
    iget-boolean p1, p1, Lfm3;->j:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lpj1;->f:Lkj1;

    .line 3
    iget-object p1, p1, Lkj1;->B:Ljava/util/Map;

    .line 4
    iget-object v0, p0, Lpj1;->e:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lpj1;->f:Lkj1;

    .line 6
    iget-object v0, p1, Lkj1;->s:Lxl1;

    .line 7
    invoke-interface {v0}, Lxl1;->y5()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lpj1;->f:Lkj1;

    .line 8
    iget-object v1, v1, Lkj1;->s:Lxl1;

    .line 9
    invoke-interface {v1}, Lxl1;->L3()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lpj1;->f:Lkj1;

    .line 10
    iget-object v2, v2, Lkj1;->s:Lxl1;

    .line 11
    invoke-interface {v2}, Lxl1;->z4()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    .line 12
    invoke-virtual {p1, v0, v1, v2, v3}, Lkj1;->g(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method
