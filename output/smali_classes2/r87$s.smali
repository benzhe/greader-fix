.class public final Lr87$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "s"
.end annotation


# instance fields
.field public final e:Lr87$r;

.field public final synthetic f:Lr87;


# direct methods
.method public constructor <init>(Lr87;Lr87$r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr87$s;->f:Lr87;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lr87$s;->e:Lr87$r;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr87$s;->f:Lr87;

    .line 2
    iget-object v0, v0, Lr87;->b:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v1, Lr87$s$a;

    invoke-direct {v1, p0}, Lr87$s$a;-><init>(Lr87$s;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
