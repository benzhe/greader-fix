.class public final Lq77$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq77;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic e:Lq77;


# direct methods
.method public constructor <init>(Lq77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$d;->e:Lq77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq77$d;->e:Lq77;

    .line 2
    iget-object v0, v0, Lq77;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lq77$d;->e:Lq77;

    .line 4
    iget-object v1, v0, Lq77;->y:Lq77$n;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lq77;->r(Z)V

    .line 6
    iget-object v0, p0, Lq77$d;->e:Lq77;

    invoke-static {v0}, Lq77;->q(Lq77;)V

    :cond_1
    :goto_0
    return-void
.end method
