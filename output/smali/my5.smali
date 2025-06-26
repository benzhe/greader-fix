.class public final enum Lmy5;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljj6$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmy5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmy5;",
        ">;",
        "Ljj6$a;"
    }
.end annotation


# static fields
.field public static final enum f:Lmy5;

.field public static final enum g:Lmy5;

.field public static final enum h:Lmy5;

.field public static final synthetic i:[Lmy5;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lmy5;

    const-string v1, "UNKNOWN_EVENT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmy5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmy5;->f:Lmy5;

    .line 2
    new-instance v1, Lmy5;

    const-string v3, "IMPRESSION_EVENT_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lmy5;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lmy5;->g:Lmy5;

    .line 3
    new-instance v3, Lmy5;

    const-string v5, "CLICK_EVENT_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lmy5;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lmy5;->h:Lmy5;

    const/4 v5, 0x3

    new-array v5, v5, [Lmy5;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lmy5;->i:[Lmy5;

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
    iput p3, p0, Lmy5;->e:I

    return-void
.end method

.method public static i(I)Lmy5;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lmy5;->h:Lmy5;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lmy5;->g:Lmy5;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lmy5;->f:Lmy5;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmy5;
    .locals 1

    .line 1
    const-class v0, Lmy5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmy5;

    return-object p0
.end method

.method public static values()[Lmy5;
    .locals 1

    .line 1
    sget-object v0, Lmy5;->i:[Lmy5;

    invoke-virtual {v0}, [Lmy5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmy5;

    return-object v0
.end method


# virtual methods
.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lmy5;->e:I

    return v0
.end method
