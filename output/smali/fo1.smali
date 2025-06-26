.class public final Lfo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj70;


# instance fields
.field public final synthetic a:Lco1;


# direct methods
.method public constructor <init>(Lco1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfo1;->a:Lco1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfo1;->a:Lco1;

    .line 2
    iget-object v0, v0, Lco1;->h:Lkj1;

    if-eqz v0, :cond_0

    const-string v1, "_videoMediaView"

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, v0, Lkj1;->j:Lek1;

    invoke-interface {v2, v1}, Lek1;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final b0(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
