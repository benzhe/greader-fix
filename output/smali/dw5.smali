.class public final synthetic Ldw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Liw5;

.field public final f:Lf47;


# direct methods
.method public constructor <init>(Liw5;Lf47;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldw5;->e:Liw5;

    iput-object p2, p0, Ldw5;->f:Lf47;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ldw5;->e:Liw5;

    iget-object v1, p0, Ldw5;->f:Lf47;

    .line 1
    iget-object v2, v0, Liw5;->b:Lex5;

    .line 2
    new-instance v3, Lhw5;

    invoke-direct {v3, v0, v1}, Lhw5;-><init>(Liw5;Lf47;)V

    .line 3
    new-instance v0, Lcx5;

    invoke-direct {v0, v3}, Lcx5;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v2, v0}, Lex5;->a(Ljava/util/concurrent/Callable;)Le45;

    return-void
.end method
