.class public final enum Lbq5$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbq5$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lbq5$a;

.field public static final enum f:Lbq5$a;

.field public static final enum g:Lbq5$a;

.field public static final enum h:Lbq5$a;

.field public static final synthetic i:[Lbq5$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lbq5$a;

    const-string v1, "REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbq5$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq5$a;->e:Lbq5$a;

    .line 2
    new-instance v1, Lbq5$a;

    const-string v3, "ADDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbq5$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbq5$a;->f:Lbq5$a;

    .line 3
    new-instance v3, Lbq5$a;

    const-string v5, "MODIFIED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbq5$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbq5$a;->g:Lbq5$a;

    .line 4
    new-instance v5, Lbq5$a;

    const-string v7, "METADATA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lbq5$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lbq5$a;->h:Lbq5$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lbq5$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lbq5$a;->i:[Lbq5$a;

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

.method public static valueOf(Ljava/lang/String;)Lbq5$a;
    .locals 1

    .line 1
    const-class v0, Lbq5$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbq5$a;

    return-object p0
.end method

.method public static values()[Lbq5$a;
    .locals 1

    .line 1
    sget-object v0, Lbq5$a;->i:[Lbq5$a;

    invoke-virtual {v0}, [Lbq5$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbq5$a;

    return-object v0
.end method
