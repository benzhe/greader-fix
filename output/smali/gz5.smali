.class public final enum Lgz5;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljj6$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgz5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgz5;",
        ">;",
        "Ljj6$a;"
    }
.end annotation


# static fields
.field public static final enum f:Lgz5;

.field public static final enum g:Lgz5;

.field public static final enum h:Lgz5;

.field public static final enum i:Lgz5;

.field public static final synthetic j:[Lgz5;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lgz5;

    const-string v1, "UNSPECIFIED_RENDER_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgz5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgz5;->f:Lgz5;

    .line 2
    new-instance v1, Lgz5;

    const-string v3, "IMAGE_FETCH_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgz5;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgz5;->g:Lgz5;

    .line 3
    new-instance v3, Lgz5;

    const-string v5, "IMAGE_DISPLAY_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgz5;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgz5;->h:Lgz5;

    .line 4
    new-instance v5, Lgz5;

    const-string v7, "IMAGE_UNSUPPORTED_FORMAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgz5;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgz5;->i:Lgz5;

    const/4 v7, 0x4

    new-array v7, v7, [Lgz5;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lgz5;->j:[Lgz5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lgz5;->e:I

    return-void
.end method

.method public static i(I)Lgz5;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lgz5;->i:Lgz5;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lgz5;->h:Lgz5;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lgz5;->g:Lgz5;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lgz5;->f:Lgz5;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgz5;
    .locals 1

    .line 1
    const-class v0, Lgz5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgz5;

    return-object p0
.end method

.method public static values()[Lgz5;
    .locals 1

    .line 1
    sget-object v0, Lgz5;->j:[Lgz5;

    invoke-virtual {v0}, [Lgz5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgz5;

    return-object v0
.end method


# virtual methods
.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lgz5;->e:I

    return v0
.end method
