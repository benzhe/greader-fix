.class public final Ldd6$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Ltj6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltj6<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lfl6;->o:Lfl6;

    .line 2
    new-instance v1, Ltj6;

    const-string v2, ""

    invoke-direct {v1, v0, v2, v0, v2}, Ltj6;-><init>(Lfl6;Ljava/lang/Object;Lfl6;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Ldd6$c;->a:Ltj6;

    return-void
.end method
