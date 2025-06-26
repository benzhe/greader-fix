.class public final Lzn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrc7<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lzn6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzn6;

    invoke-direct {v0}, Lzn6;-><init>()V

    sput-object v0, Lzn6;->a:Lzn6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Ljava/lang/Integer;

    const-string v0, "<anonymous parameter 0>"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "i"

    invoke-static {p2, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
