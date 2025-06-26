.class public final synthetic Lqd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lqd1;->a:Z

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lqd1;->a:Z

    check-cast p1, Lud1;

    .line 2
    invoke-interface {p1, v0}, Lud1;->t0(Z)V

    return-void
.end method
