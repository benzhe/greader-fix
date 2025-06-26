.class public final Ljd5$c;
.super Ljd5$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Ljd5$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljd5$c;

    invoke-direct {v0}, Ljd5$c;-><init>()V

    sput-object v0, Ljd5$c;->b:Ljd5$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1
    invoke-direct {p0, v0}, Ljd5$b;-><init>(Ljava/lang/String;)V

    return-void
.end method
