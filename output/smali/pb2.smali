.class public final synthetic Lpb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lqb2;


# direct methods
.method public constructor <init>(Lqb2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb2;->e:Lqb2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpb2;->e:Lqb2;

    .line 1
    new-instance v1, Lnb2;

    iget-object v0, v0, Lqb2;->b:Lqk2;

    invoke-direct {v1, v0}, Lnb2;-><init>(Lqk2;)V

    return-object v1
.end method
