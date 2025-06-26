.class public final Lq77$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc87$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "j"
.end annotation


# instance fields
.field public final synthetic a:Lq77;


# direct methods
.method public constructor <init>(Lq77;Lq77$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$j;->a:Lq77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx47;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lq77$j;->a:Lq77;

    .line 2
    iget-object p1, p1, Lq77;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const-string v0, "Channel must have been shut down"

    invoke-static {p1, v0}, Lc50;->G(ZLjava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq77$j;->a:Lq77;

    .line 2
    iget-object v0, v0, Lq77;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Channel must have been shut down"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lq77$j;->a:Lq77;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lq77;->H:Z

    .line 6
    iget-object v0, p0, Lq77$j;->a:Lq77;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lq77;->w(Z)V

    .line 8
    iget-object v0, p0, Lq77$j;->a:Lq77;

    invoke-static {v0}, Lq77;->n(Lq77;)V

    .line 9
    iget-object v0, p0, Lq77$j;->a:Lq77;

    invoke-static {v0}, Lq77;->p(Lq77;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq77$j;->a:Lq77;

    iget-object v1, v0, Lq77;->X:Lb77;

    .line 2
    iget-object v0, v0, Lq77;->D:Lh67;

    .line 3
    invoke-virtual {v1, v0, p1}, Lb77;->c(Ljava/lang/Object;Z)V

    return-void
.end method
