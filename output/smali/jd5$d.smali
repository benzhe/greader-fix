.class public final Ljd5$d;
.super Ljd5$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Ljd5$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 2
    new-instance v0, Ljd5$d;

    invoke-direct {v0}, Ljd5$d;-><init>()V

    sput-object v0, Ljd5$d;->b:Ljd5$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.whitespace()"

    .line 1
    invoke-direct {p0, v0}, Ljd5$b;-><init>(Ljava/lang/String;)V

    return-void
.end method
