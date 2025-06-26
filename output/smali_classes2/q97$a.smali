.class public final enum Lq97$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq97$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lq97$a;

.field public static final enum f:Lq97$a;

.field public static final synthetic g:[Lq97$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lq97$a;

    const-string v1, "INBOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq97$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq97$a;->e:Lq97$a;

    .line 2
    new-instance v1, Lq97$a;

    const-string v3, "OUTBOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lq97$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq97$a;->f:Lq97$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lq97$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lq97$a;->g:[Lq97$a;

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

.method public static valueOf(Ljava/lang/String;)Lq97$a;
    .locals 1

    .line 1
    const-class v0, Lq97$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq97$a;

    return-object p0
.end method

.method public static values()[Lq97$a;
    .locals 1

    .line 1
    sget-object v0, Lq97$a;->g:[Lq97$a;

    invoke-virtual {v0}, [Lq97$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq97$a;

    return-object v0
.end method
