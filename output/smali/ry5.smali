.class public final synthetic Lry5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb45;


# static fields
.field public static final a:Lry5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lry5;

    invoke-direct {v0}, Lry5;-><init>()V

    sput-object v0, Lry5;->a:Lry5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting InAppMessaging runtime with Installation ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln56;->u1(Ljava/lang/String;)V

    return-void
.end method
