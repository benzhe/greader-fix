.class public Lyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldp;",
        "Ljava/lang/Object<",
        "Lyp;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:Lpp;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpp;

    const-string v1, " "

    invoke-direct {v0, v1}, Lpp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyp;->e:Lpp;

    return-void
.end method
