.class public final enum Lyt5$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyt5$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lyt5$a;

.field public static final enum f:Lyt5$a;

.field public static final enum g:Lyt5$a;

.field public static final synthetic h:[Lyt5$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lyt5$a;

    const-string v1, "LOCAL_MUTATIONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyt5$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyt5$a;->e:Lyt5$a;

    .line 2
    new-instance v1, Lyt5$a;

    const-string v3, "COMMITTED_MUTATIONS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lyt5$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyt5$a;->f:Lyt5$a;

    .line 3
    new-instance v3, Lyt5$a;

    const-string v5, "SYNCED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lyt5$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyt5$a;->g:Lyt5$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lyt5$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lyt5$a;->h:[Lyt5$a;

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

.method public static valueOf(Ljava/lang/String;)Lyt5$a;
    .locals 1

    .line 1
    const-class v0, Lyt5$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyt5$a;

    return-object p0
.end method

.method public static values()[Lyt5$a;
    .locals 1

    .line 1
    sget-object v0, Lyt5$a;->h:[Lyt5$a;

    invoke-virtual {v0}, [Lyt5$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyt5$a;

    return-object v0
.end method
