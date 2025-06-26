.class public final enum Lcj5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcj5;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lcj5;

.field public static final enum f:Lcj5;

.field public static final enum g:Lcj5;

.field public static final synthetic h:[Lcj5;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcj5;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcj5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcj5;->e:Lcj5;

    .line 2
    new-instance v1, Lcj5;

    const-string v3, "JAVA_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcj5;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcj5;->f:Lcj5;

    .line 3
    new-instance v3, Lcj5;

    const-string v5, "ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcj5;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcj5;->g:Lcj5;

    const/4 v5, 0x3

    new-array v5, v5, [Lcj5;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcj5;->h:[Lcj5;

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

.method public static i(Lpm5;)Lcj5;
    .locals 4

    .line 1
    iget v0, p0, Lpm5;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget p0, p0, Lpm5;->h:I

    if-ne p0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 3
    sget-object p0, Lcj5;->e:Lcj5;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 4
    sget-object p0, Lcj5;->f:Lcj5;

    goto :goto_1

    .line 5
    :cond_3
    sget-object p0, Lcj5;->g:Lcj5;

    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcj5;
    .locals 1

    .line 1
    const-class v0, Lcj5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcj5;

    return-object p0
.end method

.method public static values()[Lcj5;
    .locals 1

    .line 1
    sget-object v0, Lcj5;->h:[Lcj5;

    invoke-virtual {v0}, [Lcj5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcj5;

    return-object v0
.end method
