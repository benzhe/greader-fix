.class public final Ltv0;
.super Lh21;
.source "SourceFile"


# static fields
.field public static final c:Ltv0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltv0;

    invoke-direct {v0}, Ltv0;-><init>()V

    sput-object v0, Ltv0;->c:Ltv0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh21;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;[BLjava/lang/String;)Ld91;
    .locals 0

    const-string p2, "moov"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lfb1;

    invoke-direct {p1}, Lfb1;-><init>()V

    return-object p1

    :cond_0
    const-string p2, "mvhd"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    new-instance p1, Lea1;

    invoke-direct {p1}, Lea1;-><init>()V

    return-object p1

    .line 5
    :cond_1
    new-instance p2, Lfc1;

    invoke-direct {p2, p1}, Lfc1;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
