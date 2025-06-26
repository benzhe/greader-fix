.class public final Lis6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Ljava/lang/Throwable;",
        "Lyj7;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lis6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lis6;

    invoke-direct {v0}, Lis6;-><init>()V

    sput-object v0, Lis6;->e:Lis6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "throwable"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Purchase flow could not be started"

    .line 3
    invoke-static {v0, p1}, Ljy6;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
