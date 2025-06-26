.class public final Lgc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ldc3;


# direct methods
.method public constructor <init>(Ldc3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgc3;->e:Ldc3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgc3;->e:Ldc3;

    .line 2
    invoke-virtual {v0}, Ldc3;->d()V

    return-void
.end method
