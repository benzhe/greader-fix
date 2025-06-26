.class public final synthetic Las5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lfs5;

.field public final f:Lqi6;


# direct methods
.method public constructor <init>(Lfs5;Lqi6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Las5;->e:Lfs5;

    iput-object p2, p0, Las5;->f:Lqi6;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Las5;->e:Lfs5;

    iget-object v1, p0, Las5;->f:Lqi6;

    .line 1
    iget-object v0, v0, Lfs5;->b:Lss5;

    invoke-interface {v0, v1}, Lss5;->e(Lqi6;)V

    return-void
.end method
