.class public final synthetic Lvo2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lqo2;

.field public final f:Llo2;


# direct methods
.method public constructor <init>(Lqo2;Llo2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvo2;->e:Lqo2;

    iput-object p2, p0, Lvo2;->f:Llo2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvo2;->e:Lqo2;

    iget-object v1, p0, Lvo2;->f:Llo2;

    .line 2
    iget-object v0, v0, Lqo2;->f:Lko2;

    .line 3
    iget-object v0, v0, Lko2;->c:Lxo2;

    .line 4
    invoke-interface {v0, v1}, Lxo2;->R(Llo2;)V

    return-void
.end method
