.class public final Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;
.super Lokhttp3/internal/concurrent/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/ws/RealWebSocket;->writeOneFrame$okhttp()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $cancelable:Z

.field public final synthetic $messageOrClose$inlined:Lrm7;

.field public final synthetic $name:Ljava/lang/String;

.field public final synthetic $pong$inlined:Lbt7;

.field public final synthetic $readerToClose$inlined:Lrm7;

.field public final synthetic $receivedCloseCode$inlined:Lpm7;

.field public final synthetic $receivedCloseReason$inlined:Lrm7;

.field public final synthetic $streamsToClose$inlined:Lrm7;

.field public final synthetic $writer$inlined:Lokhttp3/internal/ws/WebSocketWriter;

.field public final synthetic $writerToClose$inlined:Lrm7;

.field public final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/ws/RealWebSocket;Lokhttp3/internal/ws/WebSocketWriter;Lbt7;Lrm7;Lpm7;Lrm7;Lrm7;Lrm7;Lrm7;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->$name:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->$cancelable:Z

    iput-object p5, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    iput-object p6, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->$writer$inlined:Lokhttp3/internal/ws/WebSocketWriter;

    iput-object p7, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->$pong$inlined:Lbt7;

    iput-object p8, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->$messageOrClose$inlined:Lrm7;

    iput-object p9, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->$receivedCloseCode$inlined:Lpm7;

    iput-object p10, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->$receivedCloseReason$inlined:Lrm7;

    iput-object p11, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->$streamsToClose$inlined:Lrm7;

    iput-object p12, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->$readerToClose$inlined:Lrm7;

    iput-object p13, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->$writerToClose$inlined:Lrm7;

    .line 1
    invoke-direct {p0, p3, p4}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public runOnce()J
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lokhttp3/internal/ws/RealWebSocket;->cancel()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
