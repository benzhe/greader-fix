.class public final Lpx6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lrx6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lox6;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lox6;)V
    .locals 0

    iput-object p1, p0, Lpx6;->e:Ljava/lang/String;

    iput-object p2, p0, Lpx6;->f:Lox6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lpx6;->e:Ljava/lang/String;

    iget-object v1, p0, Lpx6;->f:Lox6;

    invoke-static {v0, v1}, Lqx6;->a(Ljava/lang/String;Lox6;)Lrx6;

    move-result-object v0

    return-object v0
.end method
