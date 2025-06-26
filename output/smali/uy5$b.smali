.class public final enum Luy5$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luy5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luy5$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Luy5$b;

.field public static final enum f:Luy5$b;

.field public static final enum g:Luy5$b;

.field public static final enum h:Luy5$b;

.field public static final synthetic i:[Luy5$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Luy5$b;

    const-string v1, "UNSPECIFIED_RENDER_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luy5$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luy5$b;->e:Luy5$b;

    .line 2
    new-instance v1, Luy5$b;

    const-string v3, "IMAGE_FETCH_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luy5$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luy5$b;->f:Luy5$b;

    .line 3
    new-instance v3, Luy5$b;

    const-string v5, "IMAGE_DISPLAY_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luy5$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luy5$b;->g:Luy5$b;

    .line 4
    new-instance v5, Luy5$b;

    const-string v7, "IMAGE_UNSUPPORTED_FORMAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luy5$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luy5$b;->h:Luy5$b;

    const/4 v7, 0x4

    new-array v7, v7, [Luy5$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Luy5$b;->i:[Luy5$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luy5$b;
    .locals 1

    .line 1
    const-class v0, Luy5$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luy5$b;

    return-object p0
.end method

.method public static values()[Luy5$b;
    .locals 1

    .line 1
    sget-object v0, Luy5$b;->i:[Luy5$b;

    invoke-virtual {v0}, [Luy5$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luy5$b;

    return-object v0
.end method
