.class public final Lbj7$b;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbj7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public static final e:Lbj7$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbj7$b;

    invoke-direct {v0}, Lbj7$b;-><init>()V

    sput-object v0, Lbj7$b;->e:Lbj7$b;

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

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
