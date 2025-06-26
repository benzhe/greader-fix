.class public final Loc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$b;


# instance fields
.field public final synthetic a:Lxs0;


# direct methods
.method public constructor <init>(Lxs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loc0;->a:Lxs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    iget-object p1, p0, Loc0;->a:Lxs0;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method
