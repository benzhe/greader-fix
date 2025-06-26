.class public final Lz37;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz37$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Lde5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lz37;->a:Ljava/nio/charset/Charset;

    .line 2
    sget-object v0, Li47;->d:Lde5;

    sput-object v0, Lz37;->b:Lde5;

    return-void
.end method

.method public static a(Ljava/lang/String;Lz37$a;)Li47$f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lz37$a<",
            "TT;>;)",
            "Li47$f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 2
    :cond_0
    invoke-static {p0, v1, p1}, Li47$f;->b(Ljava/lang/String;ZLi47$i;)Li47$f;

    move-result-object p0

    return-object p0
.end method
