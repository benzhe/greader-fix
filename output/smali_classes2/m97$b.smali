.class public final enum Lm97$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm97$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lm97$b;

.field public static final enum f:Lm97$b;

.field public static final synthetic g:[Lm97$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lm97$b;

    const-string v1, "TLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm97$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm97$b;->e:Lm97$b;

    .line 2
    new-instance v1, Lm97$b;

    const-string v3, "PLAINTEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lm97$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm97$b;->f:Lm97$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lm97$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lm97$b;->g:[Lm97$b;

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

.method public static valueOf(Ljava/lang/String;)Lm97$b;
    .locals 1

    .line 1
    const-class v0, Lm97$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm97$b;

    return-object p0
.end method

.method public static values()[Lm97$b;
    .locals 1

    .line 1
    sget-object v0, Lm97$b;->g:[Lm97$b;

    invoke-virtual {v0}, [Lm97$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm97$b;

    return-object v0
.end method
