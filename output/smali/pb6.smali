.class public final synthetic Lpb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lrb6;


# direct methods
.method public constructor <init>(Lrb6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb6;->e:Lrb6;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpb6;->e:Lrb6;

    invoke-virtual {v0}, Lrb6;->c()Ljb6;

    move-result-object v0

    return-object v0
.end method
