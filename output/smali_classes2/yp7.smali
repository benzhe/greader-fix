.class public interface abstract Lyp7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrk7$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyp7$a;
    }
.end annotation


# static fields
.field public static final d:Lyp7$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyp7$a;->a:Lyp7$a;

    sput-object v0, Lyp7;->d:Lyp7$a;

    return-void
.end method


# virtual methods
.method public abstract f(ZZLpl7;)Llp7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lpl7<",
            "-",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;)",
            "Llp7;"
        }
    .end annotation
.end method

.method public abstract g()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract isActive()Z
.end method

.method public abstract start()Z
.end method
