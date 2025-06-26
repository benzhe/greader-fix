.class public final synthetic Lem5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxq;


# static fields
.field public static final a:Lem5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lem5;

    invoke-direct {v0}, Lem5;-><init>()V

    sput-object v0, Lem5;->a:Lem5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ltk5;

    .line 1
    sget-object v0, Lfm5;->b:Lcl5;

    invoke-virtual {v0, p1}, Lcl5;->g(Ltk5;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method
