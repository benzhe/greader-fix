.class public final Lq77$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt57$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Lq77;


# direct methods
.method public constructor <init>(Lq77;Lq77$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$h;->a:Lq77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc47$f;)La67;
    .locals 3

    .line 1
    iget-object v0, p0, Lq77$h;->a:Lq77;

    .line 2
    iget-object v0, v0, Lq77;->z:Lc47$i;

    .line 3
    iget-object v1, p0, Lq77$h;->a:Lq77;

    .line 4
    iget-object v1, v1, Lq77;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p1, p0, Lq77$h;->a:Lq77;

    .line 7
    iget-object p1, p1, Lq77;->D:Lh67;

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    .line 8
    iget-object p1, p0, Lq77$h;->a:Lq77;

    iget-object p1, p1, Lq77;->n:Lb57;

    new-instance v0, Lq77$h$a;

    invoke-direct {v0, p0}, Lq77$h$a;-><init>(Lq77$h;)V

    .line 9
    iget-object v1, p1, Lb57;->f:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v0, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1}, Lb57;->a()V

    .line 11
    iget-object p1, p0, Lq77$h;->a:Lq77;

    .line 12
    iget-object p1, p1, Lq77;->D:Lh67;

    return-object p1

    .line 13
    :cond_1
    invoke-virtual {v0, p1}, Lc47$i;->a(Lc47$f;)Lc47$e;

    move-result-object v0

    .line 14
    check-cast p1, Ll87;

    .line 15
    iget-object p1, p1, Ll87;->a:Lx27;

    .line 16
    invoke-virtual {p1}, Lx27;->b()Z

    move-result p1

    .line 17
    invoke-static {v0, p1}, Lu67;->e(Lc47$e;Z)La67;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 18
    :cond_2
    iget-object p1, p0, Lq77$h;->a:Lq77;

    .line 19
    iget-object p1, p1, Lq77;->D:Lh67;

    return-object p1
.end method
