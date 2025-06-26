.class public final enum Lcv5$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcv5$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lcv5$c;

.field public static final enum f:Lcv5$c;

.field public static final enum g:Lcv5$c;

.field public static final enum h:Lcv5$c;

.field public static final synthetic i:[Lcv5$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcv5$c;

    const-string v1, "NO_DOCUMENT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcv5$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcv5$c;->e:Lcv5$c;

    .line 2
    new-instance v1, Lcv5$c;

    const-string v4, "DOCUMENT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcv5$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcv5$c;->f:Lcv5$c;

    .line 3
    new-instance v4, Lcv5$c;

    const-string v6, "UNKNOWN_DOCUMENT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcv5$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcv5$c;->g:Lcv5$c;

    .line 4
    new-instance v6, Lcv5$c;

    const-string v8, "DOCUMENTTYPE_NOT_SET"

    invoke-direct {v6, v8, v7, v2}, Lcv5$c;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcv5$c;->h:Lcv5$c;

    const/4 v8, 0x4

    new-array v8, v8, [Lcv5$c;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5
    sput-object v8, Lcv5$c;->i:[Lcv5$c;

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

.method public static valueOf(Ljava/lang/String;)Lcv5$c;
    .locals 1

    .line 1
    const-class v0, Lcv5$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcv5$c;

    return-object p0
.end method

.method public static values()[Lcv5$c;
    .locals 1

    .line 1
    sget-object v0, Lcv5$c;->i:[Lcv5$c;

    invoke-virtual {v0}, [Lcv5$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcv5$c;

    return-object v0
.end method
