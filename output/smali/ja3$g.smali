.class public final enum Lja3$g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw63;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lja3$g;",
        ">;",
        "Lw63;"
    }
.end annotation


# static fields
.field public static final enum f:Lja3$g;

.field public static final enum g:Lja3$g;

.field public static final enum h:Lja3$g;

.field public static final enum i:Lja3$g;

.field public static final enum j:Lja3$g;

.field public static final enum k:Lja3$g;

.field public static final enum l:Lja3$g;

.field public static final enum m:Lja3$g;

.field public static final enum n:Lja3$g;

.field public static final enum o:Lja3$g;

.field public static final synthetic p:[Lja3$g;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lja3$g;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lja3$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lja3$g;->f:Lja3$g;

    .line 2
    new-instance v1, Lja3$g;

    const-string v3, "URL_PHISHING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lja3$g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lja3$g;->g:Lja3$g;

    .line 3
    new-instance v3, Lja3$g;

    const-string v5, "URL_MALWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lja3$g;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lja3$g;->h:Lja3$g;

    .line 4
    new-instance v5, Lja3$g;

    const-string v7, "URL_UNWANTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lja3$g;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lja3$g;->i:Lja3$g;

    .line 5
    new-instance v7, Lja3$g;

    const-string v9, "CLIENT_SIDE_PHISHING_URL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lja3$g;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lja3$g;->j:Lja3$g;

    .line 6
    new-instance v9, Lja3$g;

    const-string v11, "CLIENT_SIDE_MALWARE_URL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lja3$g;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lja3$g;->k:Lja3$g;

    .line 7
    new-instance v11, Lja3$g;

    const-string v13, "DANGEROUS_DOWNLOAD_RECOVERY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lja3$g;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lja3$g;->l:Lja3$g;

    .line 8
    new-instance v13, Lja3$g;

    const-string v15, "DANGEROUS_DOWNLOAD_WARNING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lja3$g;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lja3$g;->m:Lja3$g;

    .line 9
    new-instance v15, Lja3$g;

    const-string v14, "OCTAGON_AD"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lja3$g;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lja3$g;->n:Lja3$g;

    .line 10
    new-instance v14, Lja3$g;

    const-string v12, "OCTAGON_AD_SB_MATCH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lja3$g;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lja3$g;->o:Lja3$g;

    const/16 v12, 0xa

    new-array v12, v12, [Lja3$g;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lja3$g;->p:[Lja3$g;

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
    iput p3, p0, Lja3$g;->e:I

    return-void
.end method

.method public static values()[Lja3$g;
    .locals 1

    .line 1
    sget-object v0, Lja3$g;->p:[Lja3$g;

    invoke-virtual {v0}, [Lja3$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lja3$g;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lja3$g;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lja3$g;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lja3$g;->e:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
