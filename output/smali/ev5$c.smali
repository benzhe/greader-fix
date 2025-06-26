.class public final enum Lev5$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lev5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lev5$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lev5$c;

.field public static final enum f:Lev5$c;

.field public static final enum g:Lev5$c;

.field public static final synthetic h:[Lev5$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lev5$c;

    const-string v1, "QUERY"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lev5$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lev5$c;->e:Lev5$c;

    .line 2
    new-instance v1, Lev5$c;

    const-string v3, "DOCUMENTS"

    const/4 v4, 0x1

    const/4 v5, 0x6

    invoke-direct {v1, v3, v4, v5}, Lev5$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lev5$c;->f:Lev5$c;

    .line 3
    new-instance v3, Lev5$c;

    const-string v5, "TARGETTYPE_NOT_SET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lev5$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lev5$c;->g:Lev5$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lev5$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lev5$c;->h:[Lev5$c;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lev5$c;
    .locals 1

    .line 1
    const-class v0, Lev5$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lev5$c;

    return-object p0
.end method

.method public static values()[Lev5$c;
    .locals 1

    .line 1
    sget-object v0, Lev5$c;->h:[Lev5$c;

    invoke-virtual {v0}, [Lev5$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lev5$c;

    return-object v0
.end method
