.class public final synthetic Lk46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# static fields
.field public static final e:Lk46;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk46;

    invoke-direct {v0}, Lk46;-><init>()V

    sput-object v0, Lk46;->e:Lk46;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event Triggered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln56;->t1(Ljava/lang/String;)V

    return-void
.end method
