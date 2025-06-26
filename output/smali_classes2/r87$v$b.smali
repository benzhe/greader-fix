.class public Lr87$v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr87$v;->e(Lx47;Lz57$a;Li47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lr87$v;


# direct methods
.method public constructor <init>(Lr87$v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr87$v$b;->e:Lr87$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr87$v$b;->e:Lr87$v;

    iget-object v0, v0, Lr87$v;->b:Lr87;

    .line 2
    iget-object v0, v0, Lr87;->b:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v1, Lr87$v$b$a;

    invoke-direct {v1, p0}, Lr87$v$b$a;-><init>(Lr87$v$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
