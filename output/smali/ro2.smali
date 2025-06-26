.class public final synthetic Lro2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lio2;


# direct methods
.method public constructor <init>(Lio2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lro2;->e:Lio2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lro2;->e:Lio2;

    .line 2
    invoke-interface {v0}, Lio2;->run()V

    const/4 v0, 0x0

    return-object v0
.end method
