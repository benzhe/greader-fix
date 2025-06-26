.class public Lw57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lx47;

.field public final synthetic f:Lt57;


# direct methods
.method public constructor <init>(Lt57;Lx47;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lw57;->f:Lt57;

    iput-object p2, p0, Lw57;->e:Lx47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw57;->f:Lt57;

    .line 2
    iget-object v0, v0, Lt57;->i:Ly57;

    .line 3
    iget-object v1, p0, Lw57;->e:Lx47;

    invoke-interface {v0, v1}, Ly57;->f(Lx47;)V

    return-void
.end method
