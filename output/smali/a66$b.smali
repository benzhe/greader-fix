.class public final La66$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La66;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ltj6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltj6<",
            "Ljava/lang/String;",
            "Lz56;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lfl6;->o:Lfl6;

    sget-object v1, Lfl6;->q:Lfl6;

    .line 2
    invoke-static {}, Lz56;->F()Lz56;

    move-result-object v2

    .line 3
    new-instance v3, Ltj6;

    const-string v4, ""

    invoke-direct {v3, v0, v4, v1, v2}, Ltj6;-><init>(Lfl6;Ljava/lang/Object;Lfl6;Ljava/lang/Object;)V

    .line 4
    sput-object v3, La66$b;->a:Ltj6;

    return-void
.end method
